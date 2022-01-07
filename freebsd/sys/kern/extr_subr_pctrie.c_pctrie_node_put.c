
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pctrie_node {scalar_t__ pn_count; int ** pn_child; } ;
struct pctrie {int dummy; } ;
typedef int (* pctrie_free_t ) (struct pctrie*,struct pctrie_node*) ;


 int KASSERT (int,char*) ;
 int PCTRIE_COUNT ;

__attribute__((used)) static __inline void
pctrie_node_put(struct pctrie *ptree, struct pctrie_node *node,
    pctrie_free_t freefn)
{
 freefn(ptree, node);
}
