
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_page_t ;
struct TYPE_2__ {int (* pm_zero_page_area ) (int ,int,int) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int ,int,int) ;

void
pmap_zero_page_area(vm_page_t m, int off, int size)
{

 pmap_methods_ptr->pm_zero_page_area(m, off, size);
}
