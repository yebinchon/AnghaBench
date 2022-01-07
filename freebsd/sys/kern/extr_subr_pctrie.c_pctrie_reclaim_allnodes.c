
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pctrie_node {int dummy; } ;
struct pctrie {int dummy; } ;
typedef int pctrie_free_t ;


 struct pctrie_node* pctrie_getroot (struct pctrie*) ;
 int pctrie_isleaf (struct pctrie_node*) ;
 int pctrie_reclaim_allnodes_int (struct pctrie*,struct pctrie_node*,int ) ;
 int pctrie_setroot (struct pctrie*,int *) ;

void
pctrie_reclaim_allnodes(struct pctrie *ptree, pctrie_free_t freefn)
{
 struct pctrie_node *root;

 root = pctrie_getroot(ptree);
 if (root == ((void*)0))
  return;
 pctrie_setroot(ptree, ((void*)0));
 if (!pctrie_isleaf(root))
  pctrie_reclaim_allnodes_int(ptree, root, freefn);
}
