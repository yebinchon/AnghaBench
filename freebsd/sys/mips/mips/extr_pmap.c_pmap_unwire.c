
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uintmax_t ;
typedef scalar_t__ pt_entry_t ;
typedef TYPE_2__* pmap_t ;
typedef int * pd_entry_t ;
struct TYPE_7__ {int wired_count; } ;
struct TYPE_8__ {TYPE_1__ pm_stats; } ;


 int NBPDR ;
 int NBSEG ;
 scalar_t__ PAGE_SIZE ;
 int PDRMASK ;
 int PMAP_LOCK (TYPE_2__*) ;
 int PMAP_UNLOCK (TYPE_2__*) ;
 int PTE_V ;
 int PTE_W ;
 int SEGMASK ;
 int panic (char*,int ) ;
 scalar_t__* pmap_pde_to_pte (int **,int) ;
 int ** pmap_pdpe_to_pde (int **,int) ;
 int ** pmap_segmap (TYPE_2__*,int) ;
 int pte_clear (scalar_t__*,int ) ;
 int pte_test (scalar_t__*,int ) ;

void
pmap_unwire(pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{
 pd_entry_t *pde, *pdpe;
 pt_entry_t *pte;
 vm_offset_t va_next;

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
  for (pte = pmap_pde_to_pte(pde, sva); sva != va_next; pte++,
      sva += PAGE_SIZE) {
   if (!pte_test(pte, PTE_V))
    continue;
   if (!pte_test(pte, PTE_W))
    panic("pmap_unwire: pte %#jx is missing PG_W",
        (uintmax_t)*pte);
   pte_clear(pte, PTE_W);
   pmap->pm_stats.wired_count--;
  }
 }
 PMAP_UNLOCK(pmap);
}
