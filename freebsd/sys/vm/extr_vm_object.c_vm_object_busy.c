
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_4__ {int busy; } ;


 int VM_OBJECT_ASSERT_LOCKED (TYPE_1__*) ;
 int atomic_thread_fence_acq_rel () ;
 int refcount_acquire (int *) ;

void
vm_object_busy(vm_object_t obj)
{

 VM_OBJECT_ASSERT_LOCKED(obj);

 refcount_acquire(&obj->busy);

 atomic_thread_fence_acq_rel();
}
