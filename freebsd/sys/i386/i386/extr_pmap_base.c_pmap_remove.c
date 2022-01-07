
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int pmap_t ;
struct TYPE_2__ {int (* pm_remove ) (int ,int ,int ) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int ,int ,int ) ;

void
pmap_remove(pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{

 pmap_methods_ptr->pm_remove(pmap, sva, eva);
}
