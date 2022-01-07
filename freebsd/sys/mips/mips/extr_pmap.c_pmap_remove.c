
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef TYPE_2__* pmap_t ;
typedef scalar_t__ pd_entry_t ;
struct TYPE_10__ {scalar_t__ resident_count; } ;
struct TYPE_11__ {TYPE_1__ pm_stats; } ;


 int NBPDR ;
 int NBSEG ;
 int PAGE_SIZE ;
 int PDRMASK ;
 int PMAP_LOCK (TYPE_2__*) ;
 int PMAP_UNLOCK (TYPE_2__*) ;
 int PTE_V ;
 int SEGMASK ;
 int pmap_invalidate_range (TYPE_2__*,int,int) ;
 int * pmap_pde_to_pte (scalar_t__*,int) ;
 scalar_t__* pmap_pdpe_to_pde (scalar_t__*,int) ;
 int pmap_remove_page (TYPE_2__*,int) ;
 scalar_t__ pmap_remove_pte (TYPE_2__*,int *,int,scalar_t__) ;
 scalar_t__* pmap_segmap (TYPE_2__*,int) ;
 int pte_test (int *,int ) ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

void
pmap_remove(pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{
 pd_entry_t *pde, *pdpe;
 pt_entry_t *pte;
 vm_offset_t va, va_next;




 if (pmap->pm_stats.resident_count == 0)
  return;

 rw_wlock(&pvh_global_lock);
 PMAP_LOCK(pmap);





 if ((sva + PAGE_SIZE) == eva) {
  pmap_remove_page(pmap, sva);
  goto out;
 }
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
   if (!pte_test(pte, PTE_V)) {
    if (va != va_next) {
     pmap_invalidate_range(pmap, va, sva);
     va = va_next;
    }
    continue;
   }
   if (va == va_next)
    va = sva;
   if (pmap_remove_pte(pmap, pte, sva, *pde)) {
    sva += PAGE_SIZE;
    break;
   }
  }
  if (va != va_next)
   pmap_invalidate_range(pmap, va, sva);
 }
out:
 rw_wunlock(&pvh_global_lock);
 PMAP_UNLOCK(pmap);
}
