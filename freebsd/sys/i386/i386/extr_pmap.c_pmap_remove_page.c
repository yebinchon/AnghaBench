
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct spglist {int dummy; } ;
typedef scalar_t__ pt_entry_t ;
typedef int pmap_t ;
struct TYPE_2__ {scalar_t__ td_pinned; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int RA_WLOCKED ;
 TYPE_1__* curthread ;
 int pmap_invalidate_page_int (int ,int ) ;
 scalar_t__* pmap_pte_quick (int ,int ) ;
 int pmap_remove_pte (int ,scalar_t__*,int ,struct spglist*) ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;

__attribute__((used)) static void
pmap_remove_page(pmap_t pmap, vm_offset_t va, struct spglist *free)
{
 pt_entry_t *pte;

 rw_assert(&pvh_global_lock, RA_WLOCKED);
 KASSERT(curthread->td_pinned > 0, ("curthread not pinned"));
 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 if ((pte = pmap_pte_quick(pmap, va)) == ((void*)0) || *pte == 0)
  return;
 pmap_remove_pte(pmap, pte, va, free);
 pmap_invalidate_page_int(pmap, va);
}
