
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_2__ {void (* pm_quick_remove_page ) (int ) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 void stub1 (int ) ;

void
pmap_quick_remove_page(vm_offset_t addr)
{

 return (pmap_methods_ptr->pm_quick_remove_page(addr));
}
