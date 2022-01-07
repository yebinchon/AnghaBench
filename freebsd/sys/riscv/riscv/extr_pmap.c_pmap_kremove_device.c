
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;


 int KASSERT (int,char*) ;
 int L3_OFFSET ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int kernel_pmap ;
 int pmap_clear (int *) ;
 int pmap_invalidate_range (int ,int,int) ;
 int * pmap_l3 (int ,int) ;

void
pmap_kremove_device(vm_offset_t sva, vm_size_t size)
{
 pt_entry_t *l3;
 vm_offset_t va;

 KASSERT((sva & L3_OFFSET) == 0,
    ("pmap_kremove_device: Invalid virtual address"));
 KASSERT((size & PAGE_MASK) == 0,
     ("pmap_kremove_device: Mapping is not page-sized"));

 va = sva;
 while (size != 0) {
  l3 = pmap_l3(kernel_pmap, va);
  KASSERT(l3 != ((void*)0), ("Invalid page table, va: 0x%lx", va));
  pmap_clear(l3);

  va += PAGE_SIZE;
  size -= PAGE_SIZE;
 }

 pmap_invalidate_range(kernel_pmap, sva, va);
}
