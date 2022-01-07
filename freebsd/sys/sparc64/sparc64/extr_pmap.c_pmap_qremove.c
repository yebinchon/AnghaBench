
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 scalar_t__ PAGE_SIZE ;
 int PMAP_STATS_INC (int ) ;
 int kernel_pmap ;
 int pmap_kremove (int ) ;
 int pmap_nqremove ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int tlb_range_demap (int ,int ,int ) ;
 int tte_list_global_lock ;

void
pmap_qremove(vm_offset_t sva, int count)
{
 vm_offset_t va;

 PMAP_STATS_INC(pmap_nqremove);
 va = sva;
 rw_wlock(&tte_list_global_lock);
 while (count-- > 0) {
  pmap_kremove(va);
  va += PAGE_SIZE;
 }
 rw_wunlock(&tte_list_global_lock);
 tlb_range_demap(kernel_pmap, sva, va);
}
