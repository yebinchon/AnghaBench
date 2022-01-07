
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int mmu_t ;


 int VM_PAGE_TO_PHYS (int ) ;

vm_offset_t
moea_quick_enter_page(mmu_t mmu, vm_page_t m)
{

 return (VM_PAGE_TO_PHYS(m));
}
