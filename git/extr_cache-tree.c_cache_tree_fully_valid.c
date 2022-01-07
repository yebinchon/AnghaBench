
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache_tree {scalar_t__ entry_count; int subtree_nr; TYPE_1__** down; int oid; } ;
struct TYPE_2__ {struct cache_tree* cache_tree; } ;


 int has_object_file (int *) ;

int cache_tree_fully_valid(struct cache_tree *it)
{
 int i;
 if (!it)
  return 0;
 if (it->entry_count < 0 || !has_object_file(&it->oid))
  return 0;
 for (i = 0; i < it->subtree_nr; i++) {
  if (!cache_tree_fully_valid(it->down[i]->cache_tree))
   return 0;
 }
 return 1;
}
