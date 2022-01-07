
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pctrie_node {scalar_t__ pn_clev; scalar_t__ pn_owner; } ;


 scalar_t__ PCTRIE_LIMIT ;
 scalar_t__ pctrie_trimkey (scalar_t__,scalar_t__) ;

__attribute__((used)) static __inline bool
pctrie_keybarr(struct pctrie_node *node, uint64_t idx)
{

 if (node->pn_clev < PCTRIE_LIMIT) {
  idx = pctrie_trimkey(idx, node->pn_clev + 1);
  return (idx != node->pn_owner);
 }
 return (0);
}
