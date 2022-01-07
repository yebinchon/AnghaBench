
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_16__ {scalar_t__ type; int ref_count; int shadow_count; int flags; struct TYPE_16__* backing_object; int paging_in_progress; int * handle; int shadow_head; } ;


 int KASSERT (int,char*) ;
 TYPE_1__* LIST_FIRST (int *) ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 scalar_t__ OBJT_DEFAULT ;
 scalar_t__ OBJT_SWAP ;
 scalar_t__ OBJT_VNODE ;
 int OBJ_DEAD ;
 int OBJ_ONEMAPPING ;
 int OBJ_TMPFS_NODE ;
 int PVM ;
 scalar_t__ REFCOUNT_COUNT (int ) ;
 int VM_OBJECT_RLOCK (TYPE_1__*) ;
 int VM_OBJECT_RUNLOCK (TYPE_1__*) ;
 int VM_OBJECT_TRYWLOCK (TYPE_1__*) ;
 int VM_OBJECT_WLOCK (TYPE_1__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_1__*) ;
 int pause (char*,int) ;
 int refcount_acquire (int*) ;
 int refcount_release (int*) ;
 int refcount_release_if_gt (int*,int) ;
 int refcount_wait (int *,char*,int ) ;
 int shadow_list ;
 int umtx_shm_object_terminated (TYPE_1__*) ;
 int vm_object_collapse (TYPE_1__*) ;
 int vm_object_pip_wait (TYPE_1__*,char*) ;
 int vm_object_set_flag (TYPE_1__*,int) ;
 int vm_object_terminate (TYPE_1__*) ;
 int vm_object_vndeallocate (TYPE_1__*) ;

void
vm_object_deallocate(vm_object_t object)
{
 vm_object_t temp;
 bool released;

 while (object != ((void*)0)) {
  VM_OBJECT_RLOCK(object);
  if (object->type == OBJT_VNODE) {
   vm_object_vndeallocate(object);
   return;
  }
  released = refcount_release_if_gt(&object->ref_count, 2);
  VM_OBJECT_RUNLOCK(object);
  if (released)
   return;

  VM_OBJECT_WLOCK(object);
  KASSERT(object->ref_count != 0,
   ("vm_object_deallocate: object deallocated too many times: %d", object->type));

  refcount_release(&object->ref_count);
  if (object->ref_count > 1) {
   VM_OBJECT_WUNLOCK(object);
   return;
  } else if (object->ref_count == 1) {
   if (object->shadow_count == 0 &&
       object->handle == ((void*)0) &&
       (object->type == OBJT_DEFAULT ||
       (object->type == OBJT_SWAP &&
       (object->flags & OBJ_TMPFS_NODE) == 0))) {
    vm_object_set_flag(object, OBJ_ONEMAPPING);
   } else if ((object->shadow_count == 1) &&
       (object->handle == ((void*)0)) &&
       (object->type == OBJT_DEFAULT ||
        object->type == OBJT_SWAP)) {
    vm_object_t robject;

    robject = LIST_FIRST(&object->shadow_head);
    KASSERT(robject != ((void*)0),
        ("vm_object_deallocate: ref_count: %d, shadow_count: %d",
      object->ref_count,
      object->shadow_count));
    KASSERT((robject->flags & OBJ_TMPFS_NODE) == 0,
        ("shadowed tmpfs v_object %p", object));
    if (!VM_OBJECT_TRYWLOCK(robject)) {



     refcount_acquire(&object->ref_count);
     VM_OBJECT_WUNLOCK(object);






     pause("vmo_de", 1);
     continue;
    }






    if ((robject->flags & OBJ_DEAD) == 0 &&
        (robject->handle == ((void*)0)) &&
        (robject->type == OBJT_DEFAULT ||
         robject->type == OBJT_SWAP)) {

     refcount_acquire(&robject->ref_count);
retry:
     if (REFCOUNT_COUNT(robject->paging_in_progress) > 0) {
      VM_OBJECT_WUNLOCK(object);
      vm_object_pip_wait(robject,
          "objde1");
      temp = robject->backing_object;
      if (object == temp) {
       VM_OBJECT_WLOCK(object);
       goto retry;
      }
     } else if (REFCOUNT_COUNT(object->paging_in_progress) > 0) {
      VM_OBJECT_WUNLOCK(robject);
      VM_OBJECT_WUNLOCK(object);
      refcount_wait(
          &object->paging_in_progress,
          "objde2", PVM);
      VM_OBJECT_WLOCK(robject);
      temp = robject->backing_object;
      if (object == temp) {
       VM_OBJECT_WLOCK(object);
       goto retry;
      }
     } else
      VM_OBJECT_WUNLOCK(object);

     if (robject->ref_count == 1) {
      robject->ref_count--;
      object = robject;
      goto doterm;
     }
     object = robject;
     vm_object_collapse(object);
     VM_OBJECT_WUNLOCK(object);
     continue;
    }
    VM_OBJECT_WUNLOCK(robject);
   }
   VM_OBJECT_WUNLOCK(object);
   return;
  }
doterm:
  umtx_shm_object_terminated(object);
  temp = object->backing_object;
  if (temp != ((void*)0)) {
   KASSERT((object->flags & OBJ_TMPFS_NODE) == 0,
       ("shadowed tmpfs v_object 2 %p", object));
   VM_OBJECT_WLOCK(temp);
   LIST_REMOVE(object, shadow_list);
   temp->shadow_count--;
   VM_OBJECT_WUNLOCK(temp);
   object->backing_object = ((void*)0);
  }





  if ((object->flags & OBJ_DEAD) == 0) {
   vm_object_set_flag(object, OBJ_DEAD);
   vm_object_terminate(object);
  } else
   VM_OBJECT_WUNLOCK(object);
  object = temp;
 }
}
