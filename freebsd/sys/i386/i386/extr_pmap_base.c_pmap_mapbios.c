
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_paddr_t ;
struct TYPE_2__ {void* (* pm_mapdev_attr ) (int ,int ,int ,int ) ;} ;


 int PAT_WRITE_BACK ;
 TYPE_1__* pmap_methods_ptr ;
 void* stub1 (int ,int ,int ,int ) ;

void *
pmap_mapbios(vm_paddr_t pa, vm_size_t size)
{

 return (pmap_methods_ptr->pm_mapdev_attr(pa, size, PAT_WRITE_BACK, 0));
}
