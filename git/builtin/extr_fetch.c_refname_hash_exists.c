
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {int dummy; } ;


 int hashmap_get_from_hash (struct hashmap*,int ,char const*) ;
 int strhash (char const*) ;

__attribute__((used)) static int refname_hash_exists(struct hashmap *map, const char *refname)
{
 return !!hashmap_get_from_hash(map, strhash(refname), refname);
}
