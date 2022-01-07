
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pctrie_node {scalar_t__ pn_count; struct pctrie_node** pn_child; } ;
struct pctrie {int dummy; } ;
typedef int pctrie_free_t ;


 int KASSERT (int,char*) ;
 scalar_t__ PCTRIE_COUNT ;
 int pctrie_isleaf (struct pctrie_node*) ;
 int pctrie_node_put (struct pctrie*,struct pctrie_node*,int ) ;

__attribute__((used)) static void
pctrie_reclaim_allnodes_int(struct pctrie *ptree, struct pctrie_node *node,
    pctrie_free_t freefn)
{
 int slot;

 KASSERT(node->pn_count <= PCTRIE_COUNT,
     ("pctrie_reclaim_allnodes_int: bad count in node %p", node));
 for (slot = 0; node->pn_count != 0; slot++) {
  if (node->pn_child[slot] == ((void*)0))
   continue;
  if (!pctrie_isleaf(node->pn_child[slot]))
   pctrie_reclaim_allnodes_int(ptree,
       node->pn_child[slot], freefn);
  node->pn_child[slot] = ((void*)0);
  node->pn_count--;
 }
 pctrie_node_put(ptree, node, freefn);
}
