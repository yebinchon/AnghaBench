
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_14__ ;


typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_pindex_t ;
typedef TYPE_2__* vm_object_t ;
typedef TYPE_3__* vm_map_t ;
typedef TYPE_4__* vm_map_entry_t ;
struct TYPE_18__ {TYPE_2__* vm_object; } ;
struct TYPE_21__ {int eflags; scalar_t__ end; scalar_t__ start; struct TYPE_21__* defer_next; TYPE_1__ object; int offset; int * cred; } ;
struct TYPE_20__ {scalar_t__ system_map; int size; } ;
struct TYPE_19__ {int ref_count; int flags; scalar_t__ type; scalar_t__ size; scalar_t__ charge; int * cred; } ;
struct TYPE_17__ {TYPE_4__* td_map_def_user; } ;


 int KASSERT (int,char*) ;
 int MAP_ENTRY_GUARD ;
 int MAP_ENTRY_IS_SUB_MAP ;
 int MAP_ENTRY_NEEDS_COPY ;
 int MPASS (int) ;
 int OBJPR_NOTMAPPED ;
 scalar_t__ OBJT_SWAP ;
 int OBJ_NOSPLIT ;
 int OBJ_ONEMAPPING ;
 scalar_t__ OFF_TO_IDX (int ) ;
 scalar_t__ TRUE ;
 int UNLINK_MERGE_NONE ;
 int VM_OBJECT_WLOCK (TYPE_2__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_2__*) ;
 scalar_t__ atop (scalar_t__) ;
 int crfree (int *) ;
 TYPE_14__* curthread ;
 TYPE_2__* kernel_object ;
 scalar_t__ ptoa (scalar_t__) ;
 int swap_pager_freespace (TYPE_2__*,scalar_t__,scalar_t__) ;
 int swap_release_by_cred (scalar_t__,int *) ;
 int vm_map_entry_deallocate (TYPE_4__*,scalar_t__) ;
 int vm_map_entry_unlink (TYPE_3__*,TYPE_4__*,int ) ;
 int vm_object_collapse (TYPE_2__*) ;
 int vm_object_page_remove (TYPE_2__*,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void
vm_map_entry_delete(vm_map_t map, vm_map_entry_t entry)
{
 vm_object_t object;
 vm_pindex_t offidxstart, offidxend, count, size1;
 vm_size_t size;

 vm_map_entry_unlink(map, entry, UNLINK_MERGE_NONE);
 object = entry->object.vm_object;

 if ((entry->eflags & MAP_ENTRY_GUARD) != 0) {
  MPASS(entry->cred == ((void*)0));
  MPASS((entry->eflags & MAP_ENTRY_IS_SUB_MAP) == 0);
  MPASS(object == ((void*)0));
  vm_map_entry_deallocate(entry, map->system_map);
  return;
 }

 size = entry->end - entry->start;
 map->size -= size;

 if (entry->cred != ((void*)0)) {
  swap_release_by_cred(size, entry->cred);
  crfree(entry->cred);
 }

 if ((entry->eflags & MAP_ENTRY_IS_SUB_MAP) == 0 &&
     (object != ((void*)0))) {
  KASSERT(entry->cred == ((void*)0) || object->cred == ((void*)0) ||
      (entry->eflags & MAP_ENTRY_NEEDS_COPY),
      ("OVERCOMMIT vm_map_entry_delete: both cred %p", entry));
  count = atop(size);
  offidxstart = OFF_TO_IDX(entry->offset);
  offidxend = offidxstart + count;
  VM_OBJECT_WLOCK(object);
  if (object->ref_count != 1 && ((object->flags & (OBJ_NOSPLIT |
      OBJ_ONEMAPPING)) == OBJ_ONEMAPPING ||
      object == kernel_object)) {
   vm_object_collapse(object);







   vm_object_page_remove(object, offidxstart, offidxend,
       OBJPR_NOTMAPPED);
   if (object->type == OBJT_SWAP)
    swap_pager_freespace(object, offidxstart,
        count);
   if (offidxend >= object->size &&
       offidxstart < object->size) {
    size1 = object->size;
    object->size = offidxstart;
    if (object->cred != ((void*)0)) {
     size1 -= object->size;
     KASSERT(object->charge >= ptoa(size1),
         ("object %p charge < 0", object));
     swap_release_by_cred(ptoa(size1),
         object->cred);
     object->charge -= ptoa(size1);
    }
   }
  }
  VM_OBJECT_WUNLOCK(object);
 } else
  entry->object.vm_object = ((void*)0);
 if (map->system_map)
  vm_map_entry_deallocate(entry, TRUE);
 else {
  entry->defer_next = curthread->td_map_def_user;
  curthread->td_map_def_user = entry;
 }
}
