
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int mmu_t ;


 int PAGE_SIZE ;
 scalar_t__ VM_PAGE_TO_PHYS (int ) ;
 int bcopy (void*,void*,int ) ;

void
moea_copy_page(mmu_t mmu, vm_page_t msrc, vm_page_t mdst)
{
 vm_offset_t dst;
 vm_offset_t src;

 dst = VM_PAGE_TO_PHYS(mdst);
 src = VM_PAGE_TO_PHYS(msrc);

 bcopy((void *)src, (void *)dst, PAGE_SIZE);
}
