
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int pte_t ;
typedef int pmap_t ;
typedef int mmu_t ;


 scalar_t__ PAGE_SIZE ;
 int PHYS_TO_VM_PAGE (int ) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 scalar_t__ PTE_ISMANAGED (int*) ;
 scalar_t__ PTE_ISMODIFIED (int*) ;
 scalar_t__ PTE_ISVALID (int*) ;
 int PTE_MODIFIED ;
 int PTE_PA (int*) ;
 int PTE_SW ;
 int PTE_UW ;
 int VM_PROT_NONE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int mmu_booke_remove (int ,int ,scalar_t__,scalar_t__) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int* pte_find (int ,int ,scalar_t__) ;
 int tlb0_flush_entry (scalar_t__) ;
 int tlb_miss_lock () ;
 int tlb_miss_unlock () ;
 int tlbivax_mutex ;
 int vm_page_dirty (int ) ;

__attribute__((used)) static void
mmu_booke_protect(mmu_t mmu, pmap_t pmap, vm_offset_t sva, vm_offset_t eva,
    vm_prot_t prot)
{
 vm_offset_t va;
 vm_page_t m;
 pte_t *pte;

 if ((prot & VM_PROT_READ) == VM_PROT_NONE) {
  mmu_booke_remove(mmu, pmap, sva, eva);
  return;
 }

 if (prot & VM_PROT_WRITE)
  return;

 PMAP_LOCK(pmap);
 for (va = sva; va < eva; va += PAGE_SIZE) {
  if ((pte = pte_find(mmu, pmap, va)) != ((void*)0)) {
   if (PTE_ISVALID(pte)) {
    m = PHYS_TO_VM_PAGE(PTE_PA(pte));

    mtx_lock_spin(&tlbivax_mutex);
    tlb_miss_lock();


    if (PTE_ISMODIFIED(pte) && PTE_ISMANAGED(pte))
     vm_page_dirty(m);

    tlb0_flush_entry(va);
    *pte &= ~(PTE_UW | PTE_SW | PTE_MODIFIED);

    tlb_miss_unlock();
    mtx_unlock_spin(&tlbivax_mutex);
   }
  }
 }
 PMAP_UNLOCK(pmap);
}
