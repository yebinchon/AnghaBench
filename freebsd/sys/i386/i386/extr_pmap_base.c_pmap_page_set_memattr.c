
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_page_t ;
typedef int vm_memattr_t ;
struct TYPE_2__ {int (* pm_page_set_memattr ) (int ,int ) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int ,int ) ;

void
pmap_page_set_memattr(vm_page_t m, vm_memattr_t ma)
{

 pmap_methods_ptr->pm_page_set_memattr(m, ma);
}
