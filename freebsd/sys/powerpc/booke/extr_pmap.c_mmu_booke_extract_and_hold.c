
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int * vm_page_t ;
typedef int vm_offset_t ;
typedef int uint32_t ;
typedef int pte_t ;
typedef scalar_t__ pmap_t ;
typedef int mmu_t ;


 int * PHYS_TO_VM_PAGE (int ) ;
 int PMAP_LOCK (scalar_t__) ;
 int PMAP_UNLOCK (scalar_t__) ;
 scalar_t__ PTE_ISVALID (int*) ;
 int PTE_PA (int*) ;
 int PTE_SW ;
 int PTE_UW ;
 int VM_PROT_WRITE ;
 scalar_t__ kernel_pmap ;
 int* pte_find (int ,scalar_t__,int ) ;
 int vm_page_wire_mapped (int *) ;

__attribute__((used)) static vm_page_t
mmu_booke_extract_and_hold(mmu_t mmu, pmap_t pmap, vm_offset_t va,
    vm_prot_t prot)
{
 pte_t *pte;
 vm_page_t m;
 uint32_t pte_wbit;

 m = ((void*)0);
 PMAP_LOCK(pmap);
 pte = pte_find(mmu, pmap, va);
 if ((pte != ((void*)0)) && PTE_ISVALID(pte)) {
  if (pmap == kernel_pmap)
   pte_wbit = PTE_SW;
  else
   pte_wbit = PTE_UW;

  if ((*pte & pte_wbit) != 0 || (prot & VM_PROT_WRITE) == 0) {
   m = PHYS_TO_VM_PAGE(PTE_PA(pte));
   if (!vm_page_wire_mapped(m))
    m = ((void*)0);
  }
 }
 PMAP_UNLOCK(pmap);
 return (m);
}
