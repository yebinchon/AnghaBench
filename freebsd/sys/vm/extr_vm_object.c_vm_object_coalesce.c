
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_pindex_t ;
typedef int vm_ooffset_t ;
typedef TYPE_1__* vm_object_t ;
typedef int uintmax_t ;
typedef int boolean_t ;
struct TYPE_8__ {scalar_t__ type; int flags; int ref_count; scalar_t__ size; scalar_t__ charge; int * cred; int * backing_object; } ;


 int FALSE ;
 int KASSERT (int,char*) ;
 scalar_t__ OBJT_DEFAULT ;
 scalar_t__ OBJT_SWAP ;
 int OBJ_NOSPLIT ;
 int OBJ_ONEMAPPING ;
 scalar_t__ OFF_TO_IDX (int ) ;
 scalar_t__ PAGE_SHIFT ;
 int TRUE ;
 int VM_OBJECT_WLOCK (TYPE_1__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_1__*) ;
 scalar_t__ ptoa (scalar_t__) ;
 int swap_pager_freespace (TYPE_1__*,scalar_t__,scalar_t__) ;
 int swap_reserve_by_cred (scalar_t__,int *) ;
 int vm_object_collapse (TYPE_1__*) ;
 int vm_object_page_remove (TYPE_1__*,scalar_t__,scalar_t__,int ) ;

boolean_t
vm_object_coalesce(vm_object_t prev_object, vm_ooffset_t prev_offset,
    vm_size_t prev_size, vm_size_t next_size, boolean_t reserved)
{
 vm_pindex_t next_pindex;

 if (prev_object == ((void*)0))
  return (TRUE);
 VM_OBJECT_WLOCK(prev_object);
 if ((prev_object->type != OBJT_DEFAULT &&
     prev_object->type != OBJT_SWAP) ||
     (prev_object->flags & OBJ_NOSPLIT) != 0) {
  VM_OBJECT_WUNLOCK(prev_object);
  return (FALSE);
 }




 vm_object_collapse(prev_object);






 if (prev_object->backing_object != ((void*)0)) {
  VM_OBJECT_WUNLOCK(prev_object);
  return (FALSE);
 }

 prev_size >>= PAGE_SHIFT;
 next_size >>= PAGE_SHIFT;
 next_pindex = OFF_TO_IDX(prev_offset) + prev_size;

 if (prev_object->ref_count > 1 &&
     prev_object->size != next_pindex &&
     (prev_object->flags & OBJ_ONEMAPPING) == 0) {
  VM_OBJECT_WUNLOCK(prev_object);
  return (FALSE);
 }




 if (prev_object->cred != ((void*)0)) {
  if (!reserved && !swap_reserve_by_cred(ptoa(next_size),
      prev_object->cred)) {
   VM_OBJECT_WUNLOCK(prev_object);
   return (FALSE);
  }
  prev_object->charge += ptoa(next_size);
 }





 if (next_pindex < prev_object->size) {
  vm_object_page_remove(prev_object, next_pindex, next_pindex +
      next_size, 0);
  if (prev_object->type == OBJT_SWAP)
   swap_pager_freespace(prev_object,
          next_pindex, next_size);
 }




 if (next_pindex + next_size > prev_object->size)
  prev_object->size = next_pindex + next_size;

 VM_OBJECT_WUNLOCK(prev_object);
 return (TRUE);
}
