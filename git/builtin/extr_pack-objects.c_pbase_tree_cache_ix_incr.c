
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int pbase_tree_cache ;

__attribute__((used)) static int pbase_tree_cache_ix_incr(int ix)
{
 return (ix+1) % ARRAY_SIZE(pbase_tree_cache);
}
