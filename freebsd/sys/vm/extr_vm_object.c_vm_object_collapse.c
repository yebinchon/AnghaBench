
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_18__ {scalar_t__ type; int flags; int ref_count; scalar_t__ resident_page_count; scalar_t__ size; scalar_t__ backing_object_offset; int shadow_count; int shadow_head; struct TYPE_18__* backing_object; int rvq; int paging_in_progress; int * handle; } ;


 int KASSERT (int,char*) ;
 int LIST_EMPTY (int *) ;
 int LIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 scalar_t__ OBJT_DEAD ;
 scalar_t__ OBJT_DEFAULT ;
 scalar_t__ OBJT_SWAP ;
 int OBJ_DEAD ;
 int OBJ_NOSPLIT ;
 int OBSC_COLLAPSE_WAIT ;
 int OFF_TO_IDX (scalar_t__) ;
 scalar_t__ REFCOUNT_COUNT (int ) ;
 scalar_t__ TRUE ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_1__*) ;
 int VM_OBJECT_WLOCK (TYPE_1__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_1__*) ;
 scalar_t__ __predict_false (int) ;
 int counter_u64_add (int ,int) ;
 int object_bypasses ;
 int object_collapses ;
 int refcount_release (int*) ;
 int shadow_list ;
 int swap_pager_copy (TYPE_1__*,TYPE_1__*,int ,scalar_t__) ;
 int vm_object_collapse_scan (TYPE_1__*,int ) ;
 int vm_object_destroy (TYPE_1__*) ;
 int vm_object_pip_add (TYPE_1__*,int) ;
 int vm_object_pip_wakeup (TYPE_1__*) ;
 int vm_object_qcollapse (TYPE_1__*) ;
 int vm_object_reference_locked (TYPE_1__*) ;
 int vm_object_scan_all_shadowed (TYPE_1__*) ;
 int vm_reserv_break_all (TYPE_1__*) ;

void
vm_object_collapse(vm_object_t object)
{
 vm_object_t backing_object, new_backing_object;

 VM_OBJECT_ASSERT_WLOCKED(object);

 while (TRUE) {





  if ((backing_object = object->backing_object) == ((void*)0))
   break;





  VM_OBJECT_WLOCK(backing_object);
  if (backing_object->handle != ((void*)0) ||
      (backing_object->type != OBJT_DEFAULT &&
      backing_object->type != OBJT_SWAP) ||
      (backing_object->flags & (OBJ_DEAD | OBJ_NOSPLIT)) != 0 ||
      object->handle != ((void*)0) ||
      (object->type != OBJT_DEFAULT &&
       object->type != OBJT_SWAP) ||
      (object->flags & OBJ_DEAD)) {
   VM_OBJECT_WUNLOCK(backing_object);
   break;
  }

  if (REFCOUNT_COUNT(object->paging_in_progress) > 0 ||
      REFCOUNT_COUNT(backing_object->paging_in_progress) > 0) {
   vm_object_qcollapse(object);
   VM_OBJECT_WUNLOCK(backing_object);
   break;
  }
  if (backing_object->ref_count == 1) {
   vm_object_pip_add(object, 1);
   vm_object_pip_add(backing_object, 1);





   vm_object_collapse_scan(object, OBSC_COLLAPSE_WAIT);
   if (backing_object->type == OBJT_SWAP) {
    swap_pager_copy(
        backing_object,
        object,
        OFF_TO_IDX(object->backing_object_offset), TRUE);
   }






   LIST_REMOVE(object, shadow_list);
   backing_object->shadow_count--;
   if (backing_object->backing_object) {
    VM_OBJECT_WLOCK(backing_object->backing_object);
    LIST_REMOVE(backing_object, shadow_list);
    LIST_INSERT_HEAD(
        &backing_object->backing_object->shadow_head,
        object, shadow_list);



    VM_OBJECT_WUNLOCK(backing_object->backing_object);
   }
   object->backing_object = backing_object->backing_object;
   object->backing_object_offset +=
       backing_object->backing_object_offset;
   KASSERT(backing_object->ref_count == 1, (
"backing_object %p was somehow re-referenced during collapse!",
       backing_object));
   vm_object_pip_wakeup(backing_object);
   backing_object->type = OBJT_DEAD;
   backing_object->ref_count = 0;
   VM_OBJECT_WUNLOCK(backing_object);
   vm_object_destroy(backing_object);

   vm_object_pip_wakeup(object);
   counter_u64_add(object_collapses, 1);
  } else {




   if (object->resident_page_count != object->size &&
       !vm_object_scan_all_shadowed(object)) {
    VM_OBJECT_WUNLOCK(backing_object);
    break;
   }






   LIST_REMOVE(object, shadow_list);
   backing_object->shadow_count--;

   new_backing_object = backing_object->backing_object;
   if ((object->backing_object = new_backing_object) != ((void*)0)) {
    VM_OBJECT_WLOCK(new_backing_object);
    LIST_INSERT_HEAD(
        &new_backing_object->shadow_head,
        object,
        shadow_list
    );
    new_backing_object->shadow_count++;
    vm_object_reference_locked(new_backing_object);
    VM_OBJECT_WUNLOCK(new_backing_object);
    object->backing_object_offset +=
     backing_object->backing_object_offset;
   }





   refcount_release(&backing_object->ref_count);
   VM_OBJECT_WUNLOCK(backing_object);
   counter_u64_add(object_bypasses, 1);
  }




 }
}
