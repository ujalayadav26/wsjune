import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> foodItems = [
    {
      'imagePath': 'https://img.freepik.com/free-psd/pictou-county-pizza-isolated-transparent-background_191095-32844.jpg',
      'title': 'Pizza',
      'subtitle': 'Delicious cheese pizza',
      'calories': '250 kcal',
      'price': '12.99',
    },
    {
      'imagePath': 'https://t4.ftcdn.net/jpg/03/21/32/45/360_F_321324549_3utrdpZOFdsyUElymaPhm5LXRyTpnteh.jpg',
      'title': 'Burger',
      'subtitle': 'Juicy beef burger',
      'calories': '350 kcal',
      'price': '10.99',
    }, {
      'imagePath': 'https://img.freepik.com/free-psd/pictou-county-pizza-isolated-transparent-background_191095-32844.jpg',
      'title': 'Pizza',
      'subtitle': 'Delicious cheese pizza',
      'calories': '250 kcal',
      'price': '12.99',
    },
    {
      'imagePath': 'https://t4.ftcdn.net/jpg/03/21/32/45/360_F_321324549_3utrdpZOFdsyUElymaPhm5LXRyTpnteh.jpg',
      'title': 'Burger',
      'subtitle': 'Juicy beef burger',
      'calories': '350 kcal',
      'price': '10.99',
    }, {
      'imagePath': 'https://img.freepik.com/free-psd/pictou-county-pizza-isolated-transparent-background_191095-32844.jpg',
      'title': 'Pizza',
      'subtitle': 'Delicious cheese pizza',
      'calories': '250 kcal',
      'price': '12.99',
    },
    {
      'imagePath': 'https://t4.ftcdn.net/jpg/03/21/32/45/360_F_321324549_3utrdpZOFdsyUElymaPhm5LXRyTpnteh.jpg',
      'title': 'Burger',
      'subtitle': 'Juicy beef burger',
      'calories': '350 kcal',
      'price': '10.99',
    }, {
      'imagePath': 'https://img.freepik.com/free-psd/pictou-county-pizza-isolated-transparent-background_191095-32844.jpg',
      'title': 'Pizza',
      'subtitle': 'Delicious cheese pizza',
      'calories': '250 kcal',
      'price': '12.99',
    },
    {
      'imagePath': 'https://t4.ftcdn.net/jpg/03/21/32/45/360_F_321324549_3utrdpZOFdsyUElymaPhm5LXRyTpnteh.jpg',
      'title': 'Burger',
      'subtitle': 'Juicy beef burger',
      'calories': '350 kcal',
      'price': '10.99',
    }, {
      'imagePath': 'https://img.freepik.com/free-psd/pictou-county-pizza-isolated-transparent-background_191095-32844.jpg',
      'title': 'Pizza',
      'subtitle': 'Delicious cheese pizza',
      'calories': '250 kcal',
      'price': '12.99',
    },
    {
      'imagePath': 'https://t4.ftcdn.net/jpg/03/21/32/45/360_F_321324549_3utrdpZOFdsyUElymaPhm5LXRyTpnteh.jpg',
      'title': 'Burger',
      'subtitle': 'Juicy beef burger',
      'calories': '350 kcal',
      'price': '10.99',
    },


    // Add more food items here
  ];

  Widget _buildFoodCard(String imagePath, String title, String subtitle,
      String calories, String price,
      {EdgeInsetsGeometry margin = EdgeInsets.zero}) {
    return Container(
      margin: margin,
      height: 260,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Image.network(
                imagePath,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.orange,
                      size: 12,
                    ),
                    Text(
                      calories,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(
                      Icons.attach_money,
                      color: Colors.yellow,
                      size: 12,
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Search Food'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Row(
                children: [
                  Container(
                    width: 250,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(Icons.search),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Search here...',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(Icons.menu_rounded),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.custom(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverWovenGridDelegate.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  pattern: [
                    WovenGridTile(.8),
                    WovenGridTile(
                      5 / 7,
                      crossAxisRatio: 0.9,
                      alignment: AlignmentDirectional.centerEnd,
                    ),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  childCount: foodItems.length,
                      (context, index) =>
                      _buildFoodCard(
                        foodItems[index]['imagePath']!,
                        foodItems[index]['title']!,
                        foodItems[index]['subtitle']!,
                        foodItems[index]['calories']!,
                        foodItems[index]['price']!,
                        margin: EdgeInsets.all(8.0),
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
