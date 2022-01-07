
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct spglist {int dummy; } ;
typedef int pt_entry_t ;
typedef int pmap_t ;
struct TYPE_2__ {scalar_t__ td_pinned; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 scalar_t__ PAGE_SIZE ;
 int PG_G ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int RA_WLOCKED ;
 TYPE_1__* curthread ;
 int* pmap_pte_quick (int ,int ) ;
 scalar_t__ pmap_remove_pte (int ,int*,int ,struct spglist*) ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;

__attribute__((used)) static bool
pmap_remove_ptes(pmap_t pmap, vm_offset_t sva, vm_offset_t eva,
    struct spglist *free)
{
 pt_entry_t *pte;
 bool anyvalid;

 rw_assert(&pvh_global_lock, RA_WLOCKED);
 KASSERT(curthread->td_pinned > 0, ("curthread not pinned"));
 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 anyvalid = 0;
 for (pte = pmap_pte_quick(pmap, sva); sva != eva; pte++,
     sva += PAGE_SIZE) {
  if (*pte == 0)
   continue;





  if ((*pte & PG_G) == 0)
   anyvalid = 1;

  if (pmap_remove_pte(pmap, pte, sva, free))
   break;
 }
 return (anyvalid);
}
