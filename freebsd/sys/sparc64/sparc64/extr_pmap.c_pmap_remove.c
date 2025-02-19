
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct tte {int dummy; } ;
typedef TYPE_1__* pmap_t ;
struct TYPE_12__ {int * pm_context; } ;


 int CTR3 (int ,char*,int ,scalar_t__,scalar_t__) ;
 int KTR_PMAP ;
 scalar_t__ PAGE_SIZE ;
 int PMAP_LOCK (TYPE_1__*) ;
 scalar_t__ PMAP_REMOVE_DONE (TYPE_1__*) ;
 scalar_t__ PMAP_TSB_THRESH ;
 int PMAP_UNLOCK (TYPE_1__*) ;
 size_t curcpu ;
 int pmap_remove_tte (TYPE_1__*,int *,struct tte*,scalar_t__) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int tlb_context_demap (TYPE_1__*) ;
 int tlb_range_demap (TYPE_1__*,scalar_t__,scalar_t__) ;
 int tsb_foreach (TYPE_1__*,int *,scalar_t__,scalar_t__,int (*) (TYPE_1__*,int *,struct tte*,scalar_t__)) ;
 struct tte* tsb_tte_lookup (TYPE_1__*,scalar_t__) ;
 int tte_list_global_lock ;

void
pmap_remove(pmap_t pm, vm_offset_t start, vm_offset_t end)
{
 struct tte *tp;
 vm_offset_t va;

 CTR3(KTR_PMAP, "pmap_remove: ctx=%#lx start=%#lx end=%#lx",
     pm->pm_context[curcpu], start, end);
 if (PMAP_REMOVE_DONE(pm))
  return;
 rw_wlock(&tte_list_global_lock);
 PMAP_LOCK(pm);
 if (end - start > PMAP_TSB_THRESH) {
  tsb_foreach(pm, ((void*)0), start, end, pmap_remove_tte);
  tlb_context_demap(pm);
 } else {
  for (va = start; va < end; va += PAGE_SIZE)
   if ((tp = tsb_tte_lookup(pm, va)) != ((void*)0) &&
       !pmap_remove_tte(pm, ((void*)0), tp, va))
    break;
  tlb_range_demap(pm, start, end - 1);
 }
 PMAP_UNLOCK(pm);
 rw_wunlock(&tte_list_global_lock);
}
