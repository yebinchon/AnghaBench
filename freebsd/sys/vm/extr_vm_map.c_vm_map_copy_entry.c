
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_20__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int vm_ooffset_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_2__* vm_object_t ;
typedef TYPE_3__* vm_map_t ;
typedef TYPE_4__* vm_map_entry_t ;
struct ucred {int dummy; } ;
struct TYPE_25__ {TYPE_2__* vm_object; } ;
struct TYPE_29__ {int eflags; scalar_t__ wired_count; int protection; struct ucred* cred; scalar_t__ offset; TYPE_1__ object; scalar_t__ start; scalar_t__ end; struct TYPE_29__* defer_next; } ;
struct TYPE_28__ {int pmap; } ;
struct TYPE_27__ {scalar_t__ type; int flags; scalar_t__ charge; struct ucred* cred; int * handle; } ;
struct TYPE_26__ {struct ucred* td_ucred; TYPE_4__* td_map_def_user; } ;


 int ENTRY_CHARGED (TYPE_4__*) ;
 int KASSERT (int ,char*) ;
 int MAP_ENTRY_COW ;
 int MAP_ENTRY_IS_SUB_MAP ;
 int MAP_ENTRY_NEEDS_COPY ;
 int MAP_ENTRY_WRITECNT ;
 scalar_t__ OBJT_DEFAULT ;
 scalar_t__ OBJT_SWAP ;
 int OBJ_NOSPLIT ;
 int OBJ_ONEMAPPING ;
 int VM_MAP_ASSERT_LOCKED (TYPE_3__*) ;
 int VM_OBJECT_WLOCK (TYPE_2__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_2__*) ;
 int VM_PROT_WRITE ;
 int crhold (struct ucred*) ;
 TYPE_20__* curthread ;
 int pmap_copy (int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int pmap_protect (int ,scalar_t__,scalar_t__,int) ;
 int vm_fault_copy_entry (TYPE_3__*,TYPE_3__*,TYPE_4__*,TYPE_4__*,int *) ;
 TYPE_4__* vm_map_entry_create (TYPE_3__*) ;
 int vm_object_clear_flag (TYPE_2__*,int) ;
 int vm_object_collapse (TYPE_2__*) ;
 int vm_object_reference (TYPE_2__*) ;
 int vm_object_reference_locked (TYPE_2__*) ;
 int vm_object_split (TYPE_4__*) ;

__attribute__((used)) static void
vm_map_copy_entry(
 vm_map_t src_map,
 vm_map_t dst_map,
 vm_map_entry_t src_entry,
 vm_map_entry_t dst_entry,
 vm_ooffset_t *fork_charge)
{
 vm_object_t src_object;
 vm_map_entry_t fake_entry;
 vm_offset_t size;
 struct ucred *cred;
 int charged;

 VM_MAP_ASSERT_LOCKED(dst_map);

 if ((dst_entry->eflags|src_entry->eflags) & MAP_ENTRY_IS_SUB_MAP)
  return;

 if (src_entry->wired_count == 0 ||
     (src_entry->protection & VM_PROT_WRITE) == 0) {




  if ((src_entry->eflags & MAP_ENTRY_NEEDS_COPY) == 0 &&
      (src_entry->protection & VM_PROT_WRITE) != 0) {
   pmap_protect(src_map->pmap,
       src_entry->start,
       src_entry->end,
       src_entry->protection & ~VM_PROT_WRITE);
  }




  size = src_entry->end - src_entry->start;
  if ((src_object = src_entry->object.vm_object) != ((void*)0)) {
   VM_OBJECT_WLOCK(src_object);
   charged = ENTRY_CHARGED(src_entry);
   if (src_object->handle == ((void*)0) &&
       (src_object->type == OBJT_DEFAULT ||
       src_object->type == OBJT_SWAP)) {
    vm_object_collapse(src_object);
    if ((src_object->flags & (OBJ_NOSPLIT |
        OBJ_ONEMAPPING)) == OBJ_ONEMAPPING) {
     vm_object_split(src_entry);
     src_object =
         src_entry->object.vm_object;
    }
   }
   vm_object_reference_locked(src_object);
   vm_object_clear_flag(src_object, OBJ_ONEMAPPING);
   if (src_entry->cred != ((void*)0) &&
       !(src_entry->eflags & MAP_ENTRY_NEEDS_COPY)) {
    KASSERT(src_object->cred == ((void*)0),
        ("OVERCOMMIT: vm_map_copy_entry: cred %p",
         src_object));
    src_object->cred = src_entry->cred;
    src_object->charge = size;
   }
   VM_OBJECT_WUNLOCK(src_object);
   dst_entry->object.vm_object = src_object;
   if (charged) {
    cred = curthread->td_ucred;
    crhold(cred);
    dst_entry->cred = cred;
    *fork_charge += size;
    if (!(src_entry->eflags &
          MAP_ENTRY_NEEDS_COPY)) {
     crhold(cred);
     src_entry->cred = cred;
     *fork_charge += size;
    }
   }
   src_entry->eflags |= MAP_ENTRY_COW |
       MAP_ENTRY_NEEDS_COPY;
   dst_entry->eflags |= MAP_ENTRY_COW |
       MAP_ENTRY_NEEDS_COPY;
   dst_entry->offset = src_entry->offset;
   if (src_entry->eflags & MAP_ENTRY_WRITECNT) {
    fake_entry = vm_map_entry_create(dst_map);
    fake_entry->eflags = MAP_ENTRY_WRITECNT;
    src_entry->eflags &= ~MAP_ENTRY_WRITECNT;
    vm_object_reference(src_object);
    fake_entry->object.vm_object = src_object;
    fake_entry->start = src_entry->start;
    fake_entry->end = src_entry->end;
    fake_entry->defer_next =
        curthread->td_map_def_user;
    curthread->td_map_def_user = fake_entry;
   }

   pmap_copy(dst_map->pmap, src_map->pmap,
       dst_entry->start, dst_entry->end - dst_entry->start,
       src_entry->start);
  } else {
   dst_entry->object.vm_object = ((void*)0);
   dst_entry->offset = 0;
   if (src_entry->cred != ((void*)0)) {
    dst_entry->cred = curthread->td_ucred;
    crhold(dst_entry->cred);
    *fork_charge += size;
   }
  }
 } else {





  vm_fault_copy_entry(dst_map, src_map, dst_entry, src_entry,
      fork_charge);
 }
}
