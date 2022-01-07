
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int pt_entry_t ;


 int KASSERT (int,char*) ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ VM_MIN_KERNEL_ADDRESS ;
 int kernel_pmap ;
 int pmap_clear (int *) ;
 int pmap_invalidate_range (int ,scalar_t__,scalar_t__) ;
 int * pmap_l3 (int ,scalar_t__) ;

void
pmap_qremove(vm_offset_t sva, int count)
{
 pt_entry_t *l3;
 vm_offset_t va;

 KASSERT(sva >= VM_MIN_KERNEL_ADDRESS, ("usermode va %lx", sva));

 for (va = sva; count-- > 0; va += PAGE_SIZE) {
  l3 = pmap_l3(kernel_pmap, va);
  KASSERT(l3 != ((void*)0), ("pmap_kremove: Invalid address"));
  pmap_clear(l3);
 }
 pmap_invalidate_range(kernel_pmap, sva, va);
}
