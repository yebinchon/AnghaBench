
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pctrie_node {int dummy; } ;


 uintptr_t PCTRIE_FLAGS ;

__attribute__((used)) static __inline uint64_t *
pctrie_toval(struct pctrie_node *node)
{

 return ((uint64_t *)((uintptr_t)node & ~PCTRIE_FLAGS));
}
