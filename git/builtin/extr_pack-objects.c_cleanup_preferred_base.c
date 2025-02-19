
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct pbase_tree* tree_data; } ;
struct pbase_tree {TYPE_1__ pcache; struct pbase_tree* next; } ;
struct TYPE_7__ {struct pbase_tree* tree_data; } ;


 unsigned int ARRAY_SIZE (TYPE_2__**) ;
 int FREE_AND_NULL (TYPE_2__*) ;
 TYPE_2__* done_pbase_paths ;
 scalar_t__ done_pbase_paths_alloc ;
 scalar_t__ done_pbase_paths_num ;
 int free (struct pbase_tree*) ;
 struct pbase_tree* pbase_tree ;
 TYPE_2__** pbase_tree_cache ;

__attribute__((used)) static void cleanup_preferred_base(void)
{
 struct pbase_tree *it;
 unsigned i;

 it = pbase_tree;
 pbase_tree = ((void*)0);
 while (it) {
  struct pbase_tree *tmp = it;
  it = tmp->next;
  free(tmp->pcache.tree_data);
  free(tmp);
 }

 for (i = 0; i < ARRAY_SIZE(pbase_tree_cache); i++) {
  if (!pbase_tree_cache[i])
   continue;
  free(pbase_tree_cache[i]->tree_data);
  FREE_AND_NULL(pbase_tree_cache[i]);
 }

 FREE_AND_NULL(done_pbase_paths);
 done_pbase_paths_num = done_pbase_paths_alloc = 0;
}
