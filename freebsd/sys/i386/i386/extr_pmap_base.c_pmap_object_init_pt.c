
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_pindex_t ;
typedef int vm_offset_t ;
typedef int vm_object_t ;
typedef int pmap_t ;
struct TYPE_2__ {int (* pm_object_init_pt ) (int ,int ,int ,int ,int ) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int ,int ,int ,int ,int ) ;

void
pmap_object_init_pt(pmap_t pmap, vm_offset_t addr, vm_object_t object,
    vm_pindex_t pindex, vm_size_t size)
{

 pmap_methods_ptr->pm_object_init_pt(pmap, addr, object, pindex, size);
}
