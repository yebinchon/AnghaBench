
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int * vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;


 int * PHYS_TO_VM_PAGE (int ) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTE_RO ;
 int PTE_V ;
 int TLBLO_PTE_TO_PA (int ) ;
 int VM_PROT_WRITE ;
 int * pmap_pte (int ,int ) ;
 scalar_t__ pte_test (int *,int ) ;
 int vm_page_wire_mapped (int *) ;

vm_page_t
pmap_extract_and_hold(pmap_t pmap, vm_offset_t va, vm_prot_t prot)
{
 pt_entry_t pte, *ptep;
 vm_paddr_t pa;
 vm_page_t m;

 m = ((void*)0);
 PMAP_LOCK(pmap);
 ptep = pmap_pte(pmap, va);
 if (ptep != ((void*)0)) {
  pte = *ptep;
  if (pte_test(&pte, PTE_V) && (!pte_test(&pte, PTE_RO) ||
      (prot & VM_PROT_WRITE) == 0)) {
   pa = TLBLO_PTE_TO_PA(pte);
   m = PHYS_TO_VM_PAGE(pa);
   if (!vm_page_wire_mapped(m))
    m = ((void*)0);
  }
 }
 PMAP_UNLOCK(pmap);
 return (m);
}
