// import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
//
// class RandomWordState extends State<RandomWords> {
//
//   final _suggestions = <WordPair>[];
//   final _saved = <WordPair>{};
//   final _biggerFont = const TextStyle(fontSize: 18.0);
//
//   Widget _buildSuggestion() {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16.0),
//       itemBuilder: (context, i) {
//         if(i.isOdd) return Divider();
//
//         final index = i ~/ 2;
//         if(index >= _suggestions.length) {
//           _suggestions.addAll(generateWordPairs().take(10));
//         }
//         return _buildRow(_suggestions[index]);
//       },
//     );
//   }
//
//   Widget _buildRow(WordPair pair) {
//     final alreadySaved = _saved.contains(pair);
//     return ListTile(
//       title: Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),
//       trailing: Icon(
//         alreadySaved ? Icons.favorite : Icons.favorite_border,
//         color: alreadySaved ? Colors.purpleAccent : null,
//         semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',
//       ),
//       onTap: () {
//         setState(() {
//           if(alreadySaved) {
//             _saved.remove(pair);
//           } else {
//             _saved.add(pair);
//           }
//         });
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Startup Game Generator'),
//         actions: [IconButton(
//           icon: const Icon(Icons.list),
//           onPressed: _pushSaved,
//           tooltip: 'Saved Suggestions',
//         ),],
//       ),
//       body: _buildSuggestion(),
//     );
//   }
//
//   void _pushSaved() {
//     Navigator.of(context).push(
//       MaterialPageRoute<void>(
//           builder: (context) {
//             final tiles = _saved.map(
//                   (pair) {
//                 return ListTile(
//                   title: Text(
//                     pair.asPascalCase,
//                     style: _biggerFont,
//                   ),
//                 );
//               },
//             );
//             final divided = tiles.isNotEmpty ? ListTile.divideTiles(context: context, tiles: tiles).toList() : <Widget>[];
//             return Scaffold(
//               appBar: AppBar(
//                 title: const Text('Saved Suggestions'),
//               ),
//               body: ListView(children: divided),
//             );
//           }
//       ),
//     );
//   }
// }
//
// class RandomWords extends StatefulWidget {
//
//   @override
//   RandomWordState createState() => RandomWordState();
// }