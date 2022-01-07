
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {unsigned int private_size; scalar_t__ do_count_items; } ;


 int BUG (char*) ;

__attribute__((used)) static inline unsigned int hashmap_get_size(struct hashmap *map)
{
 if (map->do_count_items)
  return map->private_size;

 BUG("hashmap_get_size: size not set");
 return 0;
}
