
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int pte_t ;
typedef TYPE_2__* pmap_t ;
typedef int mmu_t ;
struct TYPE_7__ {int wired_count; } ;
struct TYPE_8__ {TYPE_1__ pm_stats; } ;


 scalar_t__ PAGE_SIZE ;
 int PMAP_LOCK (TYPE_2__*) ;
 int PMAP_UNLOCK (TYPE_2__*) ;
 scalar_t__ PTE_ISVALID (int *) ;
 int PTE_ISWIRED (int *) ;
 int PTE_WIRED ;
 int panic (char*,int *) ;
 int * pte_find (int ,TYPE_2__*,scalar_t__) ;

__attribute__((used)) static void
mmu_booke_unwire(mmu_t mmu, pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{
 vm_offset_t va;
 pte_t *pte;

 PMAP_LOCK(pmap);
 for (va = sva; va < eva; va += PAGE_SIZE) {
  if ((pte = pte_find(mmu, pmap, va)) != ((void*)0) &&
      PTE_ISVALID(pte)) {
   if (!PTE_ISWIRED(pte))
    panic("mmu_booke_unwire: pte %p isn't wired",
        pte);
   *pte &= ~PTE_WIRED;
   pmap->pm_stats.wired_count--;
  }
 }
 PMAP_UNLOCK(pmap);

}
