
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_offset_t ;
struct tte {int dummy; } ;
typedef TYPE_1__* pmap_t ;
struct TYPE_12__ {int * pm_context; } ;


 int CTR4 (int ,char*,int ,scalar_t__,scalar_t__,int) ;
 int KTR_PMAP ;
 scalar_t__ PAGE_SIZE ;
 int PMAP_LOCK (TYPE_1__*) ;
 scalar_t__ PMAP_TSB_THRESH ;
 int PMAP_UNLOCK (TYPE_1__*) ;
 int VM_PROT_NONE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 size_t curcpu ;
 int pmap_protect_tte (TYPE_1__*,int *,struct tte*,scalar_t__) ;
 int pmap_remove (TYPE_1__*,scalar_t__,scalar_t__) ;
 int tlb_context_demap (TYPE_1__*) ;
 int tlb_range_demap (TYPE_1__*,scalar_t__,scalar_t__) ;
 int tsb_foreach (TYPE_1__*,int *,scalar_t__,scalar_t__,int (*) (TYPE_1__*,int *,struct tte*,scalar_t__)) ;
 struct tte* tsb_tte_lookup (TYPE_1__*,scalar_t__) ;

void
pmap_protect(pmap_t pm, vm_offset_t sva, vm_offset_t eva, vm_prot_t prot)
{
 vm_offset_t va;
 struct tte *tp;

 CTR4(KTR_PMAP, "pmap_protect: ctx=%#lx sva=%#lx eva=%#lx prot=%#lx",
     pm->pm_context[curcpu], sva, eva, prot);

 if ((prot & VM_PROT_READ) == VM_PROT_NONE) {
  pmap_remove(pm, sva, eva);
  return;
 }

 if (prot & VM_PROT_WRITE)
  return;

 PMAP_LOCK(pm);
 if (eva - sva > PMAP_TSB_THRESH) {
  tsb_foreach(pm, ((void*)0), sva, eva, pmap_protect_tte);
  tlb_context_demap(pm);
 } else {
  for (va = sva; va < eva; va += PAGE_SIZE)
   if ((tp = tsb_tte_lookup(pm, va)) != ((void*)0))
    pmap_protect_tte(pm, ((void*)0), tp, va);
  tlb_range_demap(pm, sva, eva - 1);
 }
 PMAP_UNLOCK(pm);
}
