
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pte_t ;
typedef scalar_t__ pmap_t ;
typedef int mmu_t ;


 int FALSE ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 scalar_t__ PCPU_GET (int ) ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 int PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK (scalar_t__) ;
 int PMAP_UNLOCK (scalar_t__) ;
 int PTBL_UNHOLD ;
 scalar_t__ PTE_ISVALID (int *) ;
 int PTE_PA (int *) ;
 int PTE_SR ;
 int PTE_VALID ;
 int __syncicache (void*,int) ;
 int curpmap ;
 scalar_t__ kernel_pmap ;
 int min (int,int) ;
 int pte_enter (int ,scalar_t__,int ,int,int,int ) ;
 int * pte_find (int ,scalar_t__,int) ;
 int pte_remove (int ,scalar_t__,int,int ) ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

__attribute__((used)) static void
mmu_booke_sync_icache(mmu_t mmu, pmap_t pm, vm_offset_t va, vm_size_t sz)
{
 pte_t *pte;
 vm_paddr_t pa = 0;
 int sync_sz, valid;

 pmap_t pmap;
 vm_page_t m;
 vm_offset_t addr;
 int active;



 rw_wlock(&pvh_global_lock);
 pmap = PCPU_GET(curpmap);
 active = (pm == kernel_pmap || pm == pmap) ? 1 : 0;

 while (sz > 0) {
  PMAP_LOCK(pm);
  pte = pte_find(mmu, pm, va);
  valid = (pte != ((void*)0) && PTE_ISVALID(pte)) ? 1 : 0;
  if (valid)
   pa = PTE_PA(pte);
  PMAP_UNLOCK(pm);
  sync_sz = PAGE_SIZE - (va & PAGE_MASK);
  sync_sz = min(sync_sz, sz);
  if (valid) {




   if (!active) {

    addr = 0;
    m = PHYS_TO_VM_PAGE(pa);
    PMAP_LOCK(pmap);
    pte_enter(mmu, pmap, m, addr,
        PTE_SR | PTE_VALID, FALSE);
    addr += (va & PAGE_MASK);
    __syncicache((void *)addr, sync_sz);
    pte_remove(mmu, pmap, addr, PTBL_UNHOLD);
    PMAP_UNLOCK(pmap);
   } else
    __syncicache((void *)va, sync_sz);

  }
  va += sync_sz;
  sz -= sync_sz;
 }

 rw_wunlock(&pvh_global_lock);

}
