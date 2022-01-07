
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct hashmap {int dummy; } ;


 int refname_hash_add (struct hashmap*,char const*,struct object_id const*) ;

__attribute__((used)) static int add_one_refname(const char *refname,
      const struct object_id *oid,
      int flag, void *cbdata)
{
 struct hashmap *refname_map = cbdata;

 (void) refname_hash_add(refname_map, refname, oid);
 return 0;
}
