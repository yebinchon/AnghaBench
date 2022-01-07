
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
struct pctrie_node {void** pn_child; } ;


 uintptr_t PCTRIE_ISLEAF ;
 int pctrie_slot (int ,int ) ;

__attribute__((used)) static __inline void
pctrie_addval(struct pctrie_node *node, uint64_t index, uint16_t clev,
    uint64_t *val)
{
 int slot;

 slot = pctrie_slot(index, clev);
 node->pn_child[slot] = (void *)((uintptr_t)val | PCTRIE_ISLEAF);
}
