
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct repository {int dummy; } ;
struct index_state {int cache_changed; int cache_tree; } ;


 int CACHE_TREE_CHANGED ;
 int cache_tree () ;
 int cache_tree_free (int *) ;
 int prime_cache_tree_rec (struct repository*,int ,struct tree*) ;

void prime_cache_tree(struct repository *r,
        struct index_state *istate,
        struct tree *tree)
{
 cache_tree_free(&istate->cache_tree);
 istate->cache_tree = cache_tree();
 prime_cache_tree_rec(r, istate->cache_tree, tree);
 istate->cache_changed |= CACHE_TREE_CHANGED;
}
