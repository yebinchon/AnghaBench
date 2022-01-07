
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_ooffset_t ;
typedef int vm_offset_t ;
typedef int vm_object_t ;
struct TYPE_2__ {void (* pm_align_superpage ) (int ,int ,int *,int ) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 void stub1 (int ,int ,int *,int ) ;

void
pmap_align_superpage(vm_object_t object, vm_ooffset_t offset,
    vm_offset_t *addr, vm_size_t size)
{

 return (pmap_methods_ptr->pm_align_superpage(object, offset,
     addr, size));
}
