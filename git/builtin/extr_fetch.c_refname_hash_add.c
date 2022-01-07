
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refname_hash_entry {int ent; int oid; } ;
struct object_id {int dummy; } ;
struct hashmap {int dummy; } ;


 int FLEX_ALLOC_MEM (struct refname_hash_entry*,char const*,char const*,size_t) ;
 int hashmap_add (struct hashmap*,int *) ;
 int hashmap_entry_init (int *,int ) ;
 int oidcpy (int *,struct object_id const*) ;
 int strhash (char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static struct refname_hash_entry *refname_hash_add(struct hashmap *map,
         const char *refname,
         const struct object_id *oid)
{
 struct refname_hash_entry *ent;
 size_t len = strlen(refname);

 FLEX_ALLOC_MEM(ent, refname, refname, len);
 hashmap_entry_init(&ent->ent, strhash(refname));
 oidcpy(&ent->oid, oid);
 hashmap_add(map, &ent->ent);
 return ent;
}
