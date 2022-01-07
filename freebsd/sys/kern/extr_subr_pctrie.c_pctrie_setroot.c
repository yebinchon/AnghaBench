
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pctrie_node {int dummy; } ;
struct pctrie {uintptr_t pt_root; } ;



__attribute__((used)) static __inline void
pctrie_setroot(struct pctrie *ptree, struct pctrie_node *node)
{

 ptree->pt_root = (uintptr_t)node;
}
