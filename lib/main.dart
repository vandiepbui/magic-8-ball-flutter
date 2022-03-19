import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'Ask me anything',
          style: TextStyle(fontSize: 25.0),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: AnswerPage(),
    );
  }
}

class AnswerPage extends StatefulWidget {
  @override
  State<AnswerPage> createState() => _AnswerPageState();
}

class _AnswerPageState extends State<AnswerPage> {
  var answerNum = 1;
  void onChangeAnswer() {
    setState(() {
      answerNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          onChangeAnswer();
        },
        child: Image.asset('images/ball$answerNum.png'),
      ),
    );
  }
}
