
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_hashmap {int map; } ;


 int attr_hash_entry_cmp ;
 int hashmap_init (int *,int ,int *,int ) ;

__attribute__((used)) static void attr_hashmap_init(struct attr_hashmap *map)
{
 hashmap_init(&map->map, attr_hash_entry_cmp, ((void*)0), 0);
}
