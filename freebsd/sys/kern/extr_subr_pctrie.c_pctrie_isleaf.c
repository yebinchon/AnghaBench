
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pctrie_node {int dummy; } ;


 uintptr_t PCTRIE_ISLEAF ;

__attribute__((used)) static __inline bool
pctrie_isleaf(struct pctrie_node *node)
{

 return (((uintptr_t)node & PCTRIE_ISLEAF) != 0);
}
