
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int* hash; } ;


 int ARRAY_SIZE (int ) ;
 int pbase_tree_cache ;

__attribute__((used)) static int pbase_tree_cache_ix(const struct object_id *oid)
{
 return oid->hash[0] % ARRAY_SIZE(pbase_tree_cache);
}
