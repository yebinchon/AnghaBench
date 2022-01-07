
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_memattr_t ;


 scalar_t__ MIPS_DIRECT_MAPPABLE (scalar_t__) ;
 scalar_t__ MIPS_PHYS_TO_DIRECT_UNCACHED (scalar_t__) ;
 scalar_t__ PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int VM_MEMATTR_UNCACHEABLE ;
 scalar_t__ kva_alloc (scalar_t__) ;
 int panic (char*) ;
 int pmap_kenter_attr (scalar_t__,scalar_t__,int ) ;
 scalar_t__ roundup (scalar_t__,scalar_t__) ;
 scalar_t__ trunc_page (scalar_t__) ;

void *
pmap_mapdev_attr(vm_paddr_t pa, vm_size_t size, vm_memattr_t ma)
{
        vm_offset_t va, tmpva, offset;





 if (MIPS_DIRECT_MAPPABLE(pa + size - 1) && ma == VM_MEMATTR_UNCACHEABLE)
  return ((void *)MIPS_PHYS_TO_DIRECT_UNCACHED(pa));
 else {
  offset = pa & PAGE_MASK;
  size = roundup(size + offset, PAGE_SIZE);

  va = kva_alloc(size);
  if (!va)
   panic("pmap_mapdev: Couldn't alloc kernel virtual memory");
  pa = trunc_page(pa);
  for (tmpva = va; size > 0;) {
   pmap_kenter_attr(tmpva, pa, ma);
   size -= PAGE_SIZE;
   tmpva += PAGE_SIZE;
   pa += PAGE_SIZE;
  }
 }

 return ((void *)(va + offset));
}
