import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Poppins'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[500].withAlpha(200),
      body: Center(
        child: Card(
          color: Colors.brown[500].withAlpha(200),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 5,
          child: Container(
            height: 400,
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Material(
                      elevation: 5,
                      color: Colors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          // bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Container(
                        height: 200,
                        width: 200,
                        child: Image.asset(
                          'images/will.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.zero,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          // bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Container(
                        height: 200,
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'Wilfred Asomani',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                            ),
                            Text(
                              'Software Engineer',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                            ),
                            Text(
                              'Goo-Technologies',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                IconButton(
                                    icon: Icon(FontAwesomeIcons.twitter),
                                    onPressed: () {
                                      String twitter =
                                          'https://twitter.com/will_power';
                                      canLaunch(twitter).then((canLaunch) {
                                        if (canLaunch) {
                                          launch(twitter);
                                        }
                                      });
                                    }),
                                IconButton(
                                    icon: Icon(FontAwesomeIcons.linkedin),
                                    onPressed: () {
                                      String linkedIn =
                                          'https://www.linkedin.com/in/wilfred-asomani-602336160/';
                                      canLaunch(linkedIn).then((canLaunch) {
                                        if (canLaunch) {
                                          launch(linkedIn);
                                        }
                                      });
                                    }),
                                IconButton(
                                    icon: Icon(FontAwesomeIcons.google),
                                    onPressed: () {
                                      String mail =
                                          'mailto:devwilfredagyei@gmail.com';
                                      canLaunch(mail).then((canLaunch) {
                                        if (canLaunch) {
                                          launch(mail);
                                        }
                                      });
                                    }),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Card(
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Container(
                    height: 200,
                    width: 400,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Software Engineer skilled in Android (Java, Kotlin), iOS (Swift), Flutter (Dart), Nodejs, .Net core, Angular',
                            textAlign: TextAlign.center, ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
