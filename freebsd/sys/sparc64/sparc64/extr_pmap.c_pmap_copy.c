
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
struct tte {int dummy; } ;
typedef scalar_t__ pmap_t ;


 scalar_t__ PAGE_SIZE ;
 int PMAP_LOCK (scalar_t__) ;
 scalar_t__ PMAP_TSB_THRESH ;
 int PMAP_UNLOCK (scalar_t__) ;
 int pmap_copy_tte (scalar_t__,scalar_t__,struct tte*,scalar_t__) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int tlb_context_demap (scalar_t__) ;
 int tlb_range_demap (scalar_t__,scalar_t__,scalar_t__) ;
 int tsb_foreach (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int (*) (scalar_t__,scalar_t__,struct tte*,scalar_t__)) ;
 struct tte* tsb_tte_lookup (scalar_t__,scalar_t__) ;
 int tte_list_global_lock ;

void
pmap_copy(pmap_t dst_pmap, pmap_t src_pmap, vm_offset_t dst_addr,
    vm_size_t len, vm_offset_t src_addr)
{
 struct tte *tp;
 vm_offset_t va;

 if (dst_addr != src_addr)
  return;
 rw_wlock(&tte_list_global_lock);
 if (dst_pmap < src_pmap) {
  PMAP_LOCK(dst_pmap);
  PMAP_LOCK(src_pmap);
 } else {
  PMAP_LOCK(src_pmap);
  PMAP_LOCK(dst_pmap);
 }
 if (len > PMAP_TSB_THRESH) {
  tsb_foreach(src_pmap, dst_pmap, src_addr, src_addr + len,
      pmap_copy_tte);
  tlb_context_demap(dst_pmap);
 } else {
  for (va = src_addr; va < src_addr + len; va += PAGE_SIZE)
   if ((tp = tsb_tte_lookup(src_pmap, va)) != ((void*)0))
    pmap_copy_tte(src_pmap, dst_pmap, tp, va);
  tlb_range_demap(dst_pmap, src_addr, src_addr + len - 1);
 }
 rw_wunlock(&tte_list_global_lock);
 PMAP_UNLOCK(src_pmap);
 PMAP_UNLOCK(dst_pmap);
}
