
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int mmu_t ;


 scalar_t__ VM_PAGE_TO_PHYS (int ) ;
 int bzero (void*,int) ;

void
moea_zero_page_area(mmu_t mmu, vm_page_t m, int off, int size)
{
 vm_offset_t pa = VM_PAGE_TO_PHYS(m);
 void *va = (void *)(pa + off);

 bzero(va, size);
}
