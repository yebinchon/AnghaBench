
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tablesize; } ;
struct attr_hashmap {TYPE_1__ map; } ;
struct attr_hash_entry {char const* key; size_t keylen; int ent; void* value; } ;


 int attr_hashmap_init (struct attr_hashmap*) ;
 int hashmap_add (TYPE_1__*,int *) ;
 int hashmap_entry_init (int *,int ) ;
 int memhash (char const*,size_t) ;
 struct attr_hash_entry* xmalloc (int) ;

__attribute__((used)) static void attr_hashmap_add(struct attr_hashmap *map,
        const char *key, size_t keylen,
        void *value)
{
 struct attr_hash_entry *e;

 if (!map->map.tablesize)
  attr_hashmap_init(map);

 e = xmalloc(sizeof(struct attr_hash_entry));
 hashmap_entry_init(&e->ent, memhash(key, keylen));
 e->key = key;
 e->keylen = keylen;
 e->value = value;

 hashmap_add(&map->map, &e->ent);
}
