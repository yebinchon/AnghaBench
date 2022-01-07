
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_6__ {int paging_in_progress; } ;


 int PVM ;
 scalar_t__ REFCOUNT_COUNT (int ) ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_1__*) ;
 int VM_OBJECT_WLOCK (TYPE_1__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_1__*) ;
 int refcount_wait (int *,char*,int ) ;

void
vm_object_pip_wait(vm_object_t object, char *waitid)
{

 VM_OBJECT_ASSERT_WLOCKED(object);

 while (REFCOUNT_COUNT(object->paging_in_progress) > 0) {
  VM_OBJECT_WUNLOCK(object);
  refcount_wait(&object->paging_in_progress, waitid, PVM);
  VM_OBJECT_WLOCK(object);
 }
}
