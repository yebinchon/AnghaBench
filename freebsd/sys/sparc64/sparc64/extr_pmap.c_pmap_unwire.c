
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct tte {int dummy; } ;
typedef int pmap_t ;


 scalar_t__ PAGE_SIZE ;
 int PMAP_LOCK (int ) ;
 scalar_t__ PMAP_TSB_THRESH ;
 int PMAP_UNLOCK (int ) ;
 int pmap_unwire_tte (int ,int *,struct tte*,scalar_t__) ;
 int tsb_foreach (int ,int *,scalar_t__,scalar_t__,int (*) (int ,int *,struct tte*,scalar_t__)) ;
 struct tte* tsb_tte_lookup (int ,scalar_t__) ;

void
pmap_unwire(pmap_t pm, vm_offset_t sva, vm_offset_t eva)
{
 vm_offset_t va;
 struct tte *tp;

 PMAP_LOCK(pm);
 if (eva - sva > PMAP_TSB_THRESH)
  tsb_foreach(pm, ((void*)0), sva, eva, pmap_unwire_tte);
 else {
  for (va = sva; va < eva; va += PAGE_SIZE)
   if ((tp = tsb_tte_lookup(pm, va)) != ((void*)0))
    pmap_unwire_tte(pm, ((void*)0), tp, va);
 }
 PMAP_UNLOCK(pm);
}
