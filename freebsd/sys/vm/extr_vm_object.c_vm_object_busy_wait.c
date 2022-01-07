
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_4__ {scalar_t__ busy; } ;


 int PVM ;
 int VM_OBJECT_ASSERT_UNLOCKED (TYPE_1__*) ;
 int refcount_sleep (scalar_t__*,char const*,int ) ;

void
vm_object_busy_wait(vm_object_t obj, const char *wmesg)
{

 VM_OBJECT_ASSERT_UNLOCKED(obj);

 if (obj->busy)
  refcount_sleep(&obj->busy, wmesg, PVM);
}
