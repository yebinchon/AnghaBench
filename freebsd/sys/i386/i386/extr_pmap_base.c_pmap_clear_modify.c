
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_page_t ;
struct TYPE_2__ {int (* pm_clear_modify ) (int ) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int ) ;

void
pmap_clear_modify(vm_page_t m)
{

 pmap_methods_ptr->pm_clear_modify(m);
}
