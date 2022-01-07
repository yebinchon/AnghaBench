
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tablesize; } ;
struct attr_hashmap {TYPE_1__ map; } ;
struct attr_hash_entry {char const* key; size_t keylen; void* value; int ent; } ;


 int attr_hashmap_init (struct attr_hashmap*) ;
 int ent ;
 int hashmap_entry_init (int *,int ) ;
 struct attr_hash_entry* hashmap_get_entry (TYPE_1__*,struct attr_hash_entry*,int ,int *) ;
 int memhash (char const*,size_t) ;

__attribute__((used)) static void *attr_hashmap_get(struct attr_hashmap *map,
         const char *key, size_t keylen)
{
 struct attr_hash_entry k;
 struct attr_hash_entry *e;

 if (!map->map.tablesize)
  attr_hashmap_init(map);

 hashmap_entry_init(&k.ent, memhash(key, keylen));
 k.key = key;
 k.keylen = keylen;
 e = hashmap_get_entry(&map->map, &k, ent, ((void*)0));

 return e ? e->value : ((void*)0);
}
