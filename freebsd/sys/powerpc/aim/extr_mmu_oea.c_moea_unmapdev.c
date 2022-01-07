
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int vm_offset_t ;
typedef int mmu_t ;


 int PAGE_MASK ;
 int PAGE_SIZE ;
 int VM_MIN_KERNEL_ADDRESS ;
 int kva_free (int,scalar_t__) ;
 scalar_t__ roundup (scalar_t__,int ) ;
 int trunc_page (int) ;
 int virtual_end ;

void
moea_unmapdev(mmu_t mmu, vm_offset_t va, vm_size_t size)
{
 vm_offset_t base, offset;





 if ((va >= VM_MIN_KERNEL_ADDRESS) && (va <= virtual_end)) {
  base = trunc_page(va);
  offset = va & PAGE_MASK;
  size = roundup(offset + size, PAGE_SIZE);
  kva_free(base, size);
 }
}
