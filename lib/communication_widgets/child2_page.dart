import 'package:flutter/material.dart';
import 'package:flutter_samples/communication_widgets/parent_page.dart';

class Child2Page extends StatefulWidget {
  final String title;

  const Child2Page({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Child2PageState createState() => Child2PageState();
}

class Child2PageState extends State<Child2Page> {
  String value = "Page 2";

  @override
  Widget build(BuildContext context) {
    final title = ParentProvider.of(context).title;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.green,
          ),
          itemCount: 30,
          itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Home $index", style: TextStyle(color: Colors.blue, fontSize: 17),)
          ),
        ),
      ),
    );
  }
}
