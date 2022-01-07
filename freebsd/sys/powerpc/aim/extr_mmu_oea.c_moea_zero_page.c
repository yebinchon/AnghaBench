
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int mmu_t ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ VM_PAGE_TO_PHYS (int ) ;
 scalar_t__ cacheline_size ;

void
moea_zero_page(mmu_t mmu, vm_page_t m)
{
 vm_offset_t off, pa = VM_PAGE_TO_PHYS(m);

 for (off = 0; off < PAGE_SIZE; off += cacheline_size)
  __asm __volatile("dcbz 0,%0" :: "r"(pa + off));
}
