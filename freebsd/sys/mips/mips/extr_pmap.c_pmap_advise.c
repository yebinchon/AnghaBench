
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef scalar_t__ pd_entry_t ;
struct TYPE_5__ {int pv_flags; } ;
struct TYPE_6__ {TYPE_1__ md; } ;


 int MADV_DONTNEED ;
 int MADV_FREE ;
 int NBPDR ;
 int NBSEG ;
 scalar_t__ PAGE_SIZE ;
 int PDRMASK ;
 TYPE_2__* PHYS_TO_VM_PAGE (int ) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTE_D ;
 int PTE_MANAGED ;
 int PTE_V ;
 int PV_TABLE_REF ;
 int SEGMASK ;
 int TLBLO_PTE_TO_PA (int ) ;
 int pmap_invalidate_range (int ,int,int) ;
 int * pmap_pde_to_pte (scalar_t__*,int) ;
 scalar_t__* pmap_pdpe_to_pde (scalar_t__*,int) ;
 scalar_t__* pmap_segmap (int ,int) ;
 int pte_clear (int *,int) ;
 scalar_t__ pte_test (int *,int) ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int vm_page_dirty (TYPE_2__*) ;

void
pmap_advise(pmap_t pmap, vm_offset_t sva, vm_offset_t eva, int advice)
{
 pd_entry_t *pde, *pdpe;
 pt_entry_t *pte;
 vm_offset_t va, va_next;
 vm_paddr_t pa;
 vm_page_t m;

 if (advice != MADV_DONTNEED && advice != MADV_FREE)
  return;
 rw_wlock(&pvh_global_lock);
 PMAP_LOCK(pmap);
 for (; sva < eva; sva = va_next) {
  pdpe = pmap_segmap(pmap, sva);
  va_next = (sva + NBPDR) & ~PDRMASK;
  if (va_next < sva)
   va_next = eva;

  pde = pmap_pdpe_to_pde(pdpe, sva);
  if (*pde == ((void*)0))
   continue;






  if (va_next > eva)
   va_next = eva;

  va = va_next;
  for (pte = pmap_pde_to_pte(pde, sva); sva != va_next; pte++,
      sva += PAGE_SIZE) {
   if (!pte_test(pte, PTE_MANAGED | PTE_V)) {
    if (va != va_next) {
     pmap_invalidate_range(pmap, va, sva);
     va = va_next;
    }
    continue;
   }
   pa = TLBLO_PTE_TO_PA(*pte);
   m = PHYS_TO_VM_PAGE(pa);
   m->md.pv_flags &= ~PV_TABLE_REF;
   if (pte_test(pte, PTE_D)) {
    if (advice == MADV_DONTNEED) {





     vm_page_dirty(m);
    } else {
     pte_clear(pte, PTE_D);
     if (va == va_next)
      va = sva;
    }
   } else {





    if (va != va_next) {
     pmap_invalidate_range(pmap, va, sva);
     va = va_next;
    }
   }
  }
  if (va != va_next)
   pmap_invalidate_range(pmap, va, sva);
 }
 rw_wunlock(&pvh_global_lock);
 PMAP_UNLOCK(pmap);
}
