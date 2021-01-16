import 'package:flutter/material.dart';

import './dummy_data.dart';
import './widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FoodZ'),
      ),
      body: Container(
        child: GridView(
          padding: const EdgeInsets.all(10),
          children: DUMMY_CATEGORIES.map((catData) {
            return CategoryItem(
              title: catData.title,
              colour: catData.colour,
            );
          }).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    );
  }
}
