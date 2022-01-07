
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_object_t ;


 int VM_OBJECT_RLOCK (int *) ;
 int VM_OBJECT_RUNLOCK (int *) ;
 int vm_object_reference_locked (int *) ;

void
vm_object_reference(vm_object_t object)
{
 if (object == ((void*)0))
  return;
 VM_OBJECT_RLOCK(object);
 vm_object_reference_locked(object);
 VM_OBJECT_RUNLOCK(object);
}
