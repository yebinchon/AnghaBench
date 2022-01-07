
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_iter {int dummy; } ;
struct hashmap {int do_count_items; unsigned int private_size; } ;


 int hashmap_iter_init (struct hashmap*,struct hashmap_iter*) ;
 scalar_t__ hashmap_iter_next (struct hashmap_iter*) ;

__attribute__((used)) static inline void hashmap_enable_item_counting(struct hashmap *map)
{
 unsigned int n = 0;
 struct hashmap_iter iter;

 if (map->do_count_items)
  return;

 hashmap_iter_init(map, &iter);
 while (hashmap_iter_next(&iter))
  n++;

 map->do_count_items = 1;
 map->private_size = n;
}
