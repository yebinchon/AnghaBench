
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int vm_ooffset_t ;
typedef TYPE_1__* vm_object_t ;
struct ucred {int dummy; } ;
struct TYPE_6__ {void* handle; } ;


 int NOBJLIST (void*) ;
 int TAILQ_INSERT_TAIL (int ,TYPE_1__*,int ) ;
 int pager_object_list ;
 int sw_alloc_sx ;
 TYPE_1__* swap_pager_alloc_init (void*,struct ucred*,int ,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 TYPE_1__* vm_pager_object_lookup (int ,void*) ;

__attribute__((used)) static vm_object_t
swap_pager_alloc(void *handle, vm_ooffset_t size, vm_prot_t prot,
    vm_ooffset_t offset, struct ucred *cred)
{
 vm_object_t object;

 if (handle != ((void*)0)) {






  sx_xlock(&sw_alloc_sx);
  object = vm_pager_object_lookup(NOBJLIST(handle), handle);
  if (object == ((void*)0)) {
   object = swap_pager_alloc_init(handle, cred, size,
       offset);
   if (object != ((void*)0)) {
    TAILQ_INSERT_TAIL(NOBJLIST(object->handle),
        object, pager_object_list);
   }
  }
  sx_xunlock(&sw_alloc_sx);
 } else {
  object = swap_pager_alloc_init(handle, cred, size, offset);
 }
 return (object);
}
