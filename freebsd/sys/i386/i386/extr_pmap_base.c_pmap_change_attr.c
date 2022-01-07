
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_offset_t ;
struct TYPE_2__ {int (* pm_change_attr ) (int ,int ,int) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int ,int ,int) ;

int
pmap_change_attr(vm_offset_t va, vm_size_t size, int mode)
{

 return (pmap_methods_ptr->pm_change_attr(va, size, mode));
}
