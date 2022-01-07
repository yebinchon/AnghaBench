
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct TYPE_13__ {int memq; struct TYPE_13__* backing_object; } ;
struct TYPE_12__ {TYPE_2__* object; } ;


 int KASSERT (int,char*) ;
 int OBSC_COLLAPSE_NOWAIT ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_2__*) ;
 int VM_OBJECT_WLOCK (TYPE_2__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_2__*) ;
 int vm_page_busy_sleep (TYPE_1__*,char*,int) ;
 int vm_radix_wait () ;

__attribute__((used)) static vm_page_t
vm_object_collapse_scan_wait(vm_object_t object, vm_page_t p, vm_page_t next,
    int op)
{
 vm_object_t backing_object;

 VM_OBJECT_ASSERT_WLOCKED(object);
 backing_object = object->backing_object;
 VM_OBJECT_ASSERT_WLOCKED(backing_object);

 KASSERT(p == ((void*)0) || p->object == object || p->object == backing_object,
     ("invalid ownership %p %p %p", p, object, backing_object));
 if ((op & OBSC_COLLAPSE_NOWAIT) != 0)
  return (next);

 if (p == ((void*)0)) {
  vm_radix_wait();
 } else {
  if (p->object == object)
   VM_OBJECT_WUNLOCK(backing_object);
  else
   VM_OBJECT_WUNLOCK(object);
  vm_page_busy_sleep(p, "vmocol", 0);
 }
 VM_OBJECT_WLOCK(object);
 VM_OBJECT_WLOCK(backing_object);
 return (TAILQ_FIRST(&backing_object->memq));
}
