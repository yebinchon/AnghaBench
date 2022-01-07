
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_pindex_t ;
typedef int vm_offset_t ;
typedef TYPE_1__* vm_object_t ;
typedef int pmap_t ;
struct TYPE_4__ {scalar_t__ type; } ;


 int KASSERT (int,char*) ;
 scalar_t__ OBJT_DEVICE ;
 scalar_t__ OBJT_SG ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_1__*) ;

void
pmap_object_init_pt(pmap_t pmap, vm_offset_t addr,
    vm_object_t object, vm_pindex_t pindex, vm_size_t size)
{
 VM_OBJECT_ASSERT_WLOCKED(object);
 KASSERT(object->type == OBJT_DEVICE || object->type == OBJT_SG,
     ("pmap_object_init_pt: non-device object"));
}
