
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
struct TYPE_2__ {void* (* pm_kenter_temporary ) (int ,int) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 void* stub1 (int ,int) ;

void *
pmap_kenter_temporary(vm_paddr_t pa, int i)
{

 return (pmap_methods_ptr->pm_kenter_temporary(pa, i));
}
