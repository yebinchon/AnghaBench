
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_5__ {int ref_count; struct TYPE_5__* backing_object; } ;


 int OBSC_COLLAPSE_NOWAIT ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_1__*) ;
 int vm_object_collapse_scan (TYPE_1__*,int ) ;

__attribute__((used)) static void
vm_object_qcollapse(vm_object_t object)
{
 vm_object_t backing_object = object->backing_object;

 VM_OBJECT_ASSERT_WLOCKED(object);
 VM_OBJECT_ASSERT_WLOCKED(backing_object);

 if (backing_object->ref_count != 1)
  return;

 vm_object_collapse_scan(object, OBSC_COLLAPSE_NOWAIT);
}
