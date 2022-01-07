
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pte_t ;
typedef int pmap_t ;
typedef int mmu_t ;


 scalar_t__ PTE_ISVALID (int *) ;
 int PTE_PA (int *) ;
 int PTE_PA_MASK ;
 int * pte_find (int ,int ,int) ;

__attribute__((used)) static vm_paddr_t
pte_vatopa(mmu_t mmu, pmap_t pmap, vm_offset_t va)
{
 vm_paddr_t pa = 0;
 pte_t *pte;

 pte = pte_find(mmu, pmap, va);
 if ((pte != ((void*)0)) && PTE_ISVALID(pte))
  pa = (PTE_PA(pte) | (va & PTE_PA_MASK));
 return (pa);
}
