
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;


 int PHYS_TO_DMAP (int ) ;
 int VM_PAGE_TO_PHYS (int ) ;

vm_offset_t
pmap_quick_enter_page(vm_page_t m)
{

 return (PHYS_TO_DMAP(VM_PAGE_TO_PHYS(m)));
}
