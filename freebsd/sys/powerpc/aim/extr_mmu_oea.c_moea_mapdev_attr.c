
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int vm_memattr_t ;
typedef int mmu_t ;


 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int kva_alloc (scalar_t__) ;
 scalar_t__ moea_bat_mapped (int,int,scalar_t__) ;
 int moea_kenter_attr (int ,int,int,int ) ;
 int panic (char*) ;
 scalar_t__ roundup (scalar_t__,scalar_t__) ;
 int tlbie (int) ;
 int trunc_page (int) ;

void *
moea_mapdev_attr(mmu_t mmu, vm_paddr_t pa, vm_size_t size, vm_memattr_t ma)
{
 vm_offset_t va, tmpva, ppa, offset;
 int i;

 ppa = trunc_page(pa);
 offset = pa & PAGE_MASK;
 size = roundup(offset + size, PAGE_SIZE);






 for (i = 0; i < 16; i++) {
  if (moea_bat_mapped(i, pa, size) == 0)
   return ((void *) pa);
 }

 va = kva_alloc(size);
 if (!va)
  panic("moea_mapdev: Couldn't alloc kernel virtual memory");

 for (tmpva = va; size > 0;) {
  moea_kenter_attr(mmu, tmpva, ppa, ma);
  tlbie(tmpva);
  size -= PAGE_SIZE;
  tmpva += PAGE_SIZE;
  ppa += PAGE_SIZE;
 }

 return ((void *)(va + offset));
}
