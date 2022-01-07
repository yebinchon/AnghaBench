
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_changed; int cache_tree; } ;


 int CACHE_TREE_CHANGED ;
 scalar_t__ do_invalidate_path (int ,char const*) ;

void cache_tree_invalidate_path(struct index_state *istate, const char *path)
{
 if (do_invalidate_path(istate->cache_tree, path))
  istate->cache_changed |= CACHE_TREE_CHANGED;
}
