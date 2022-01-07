
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef int u_short ;
struct TYPE_4__ {int flags; } ;


 int VM_OBJECT_ASSERT_WLOCKED (TYPE_1__*) ;

void
vm_object_clear_flag(vm_object_t object, u_short bits)
{

 VM_OBJECT_ASSERT_WLOCKED(object);
 object->flags &= ~bits;
}
