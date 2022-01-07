
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_memattr_t ;
typedef int mmu_t ;


 scalar_t__ PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ kva_alloc (scalar_t__) ;
 int moea64_kenter_attr (int ,scalar_t__,scalar_t__,int ) ;
 int panic (char*) ;
 scalar_t__ roundup2 (scalar_t__,scalar_t__) ;
 scalar_t__ trunc_page (scalar_t__) ;

void *
moea64_mapdev_attr(mmu_t mmu, vm_paddr_t pa, vm_size_t size, vm_memattr_t ma)
{
 vm_offset_t va, tmpva, ppa, offset;

 ppa = trunc_page(pa);
 offset = pa & PAGE_MASK;
 size = roundup2(offset + size, PAGE_SIZE);

 va = kva_alloc(size);

 if (!va)
  panic("moea64_mapdev: Couldn't alloc kernel virtual memory");

 for (tmpva = va; size > 0;) {
  moea64_kenter_attr(mmu, tmpva, ppa, ma);
  size -= PAGE_SIZE;
  tmpva += PAGE_SIZE;
  ppa += PAGE_SIZE;
 }

 return ((void *)(va + offset));
}
