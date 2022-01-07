
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pte {scalar_t__ pte_hi; } ;



__attribute__((used)) static __inline int
moea_pte_compare(const struct pte *pt, const struct pte *pvo_pt)
{
 if (pt->pte_hi == pvo_pt->pte_hi)
  return (1);

 return (0);
}
