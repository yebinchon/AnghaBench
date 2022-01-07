
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_memattr_t ;
typedef int pt_entry_t ;


 int PTE_C (int ) ;
 int PTE_D ;
 int PTE_G ;
 int PTE_V ;
 int TLBLO_PA_TO_PFN (scalar_t__) ;
 int kernel_pmap ;
 int* pmap_pte (int ,scalar_t__) ;
 int pmap_update_page (int ,scalar_t__,int) ;
 int printf (char*,void*,void*) ;
 scalar_t__ pte_test (int*,int) ;

void
pmap_kenter_attr(vm_offset_t va, vm_paddr_t pa, vm_memattr_t ma)
{
 pt_entry_t *pte;
 pt_entry_t opte, npte;





 pte = pmap_pte(kernel_pmap, va);
 opte = *pte;
 npte = TLBLO_PA_TO_PFN(pa) | PTE_C(ma) | PTE_D | PTE_V | PTE_G;
 *pte = npte;
 if (pte_test(&opte, PTE_V) && opte != npte)
  pmap_update_page(kernel_pmap, va, npte);
}
