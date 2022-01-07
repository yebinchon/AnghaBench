
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_30__ ;
typedef struct TYPE_36__ TYPE_2__ ;
typedef struct TYPE_35__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_pindex_t ;
typedef TYPE_2__* vm_page_t ;
typedef int vm_ooffset_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_3__* vm_object_t ;
typedef TYPE_4__* vm_map_t ;
typedef TYPE_5__* vm_map_entry_t ;
typedef int boolean_t ;
struct TYPE_35__ {TYPE_3__* vm_object; } ;
struct TYPE_40__ {int protection; int eflags; scalar_t__ end; scalar_t__ start; int * cred; scalar_t__ offset; TYPE_1__ object; } ;
struct TYPE_39__ {int pmap; } ;
struct TYPE_38__ {scalar_t__ charge; scalar_t__ type; scalar_t__ size; scalar_t__ backing_object_offset; struct TYPE_38__* backing_object; int * cred; int domain; int pg_color; int flags; } ;
struct TYPE_37__ {int * td_ucred; } ;
struct TYPE_36__ {scalar_t__ pindex; int valid; int dirty; } ;


 int KASSERT (int,char*) ;
 int MAP_ENTRY_COW ;
 int MAP_ENTRY_NEEDS_COPY ;
 int MAP_ENTRY_VN_EXEC ;
 scalar_t__ OBJT_DEFAULT ;
 scalar_t__ OBJT_SWAP ;
 int OBJ_COLORED ;
 scalar_t__ OFF_TO_IDX (scalar_t__) ;
 scalar_t__ PAGE_SIZE ;
 int PMAP_ENTER_WIRED ;
 int PQ_INACTIVE ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WAITFAIL ;
 int VM_OBJECT_RLOCK (TYPE_3__*) ;
 int VM_OBJECT_RUNLOCK (TYPE_3__*) ;
 int VM_OBJECT_WLOCK (TYPE_3__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_3__*) ;
 int VM_PROT_WRITE ;
 int atop (scalar_t__) ;
 int crhold (int *) ;
 TYPE_30__* curthread ;
 int pmap_copy_page (TYPE_2__*,TYPE_2__*) ;
 int pmap_enter (int ,scalar_t__,TYPE_2__*,int,int,int ) ;
 TYPE_3__* vm_object_allocate (scalar_t__,int ) ;
 int vm_object_deallocate (TYPE_3__*) ;
 int vm_object_reference (TYPE_3__*) ;
 int vm_page_activate (TYPE_2__*) ;
 scalar_t__ vm_page_all_valid (TYPE_2__*) ;
 TYPE_2__* vm_page_alloc (TYPE_3__*,scalar_t__,int ) ;
 scalar_t__ vm_page_busy_acquire (TYPE_2__*,int ) ;
 int vm_page_lock (TYPE_2__*) ;
 TYPE_2__* vm_page_lookup (TYPE_3__*,scalar_t__) ;
 int vm_page_unlock (TYPE_2__*) ;
 int vm_page_unwire (TYPE_2__*,int ) ;
 int vm_page_wire (TYPE_2__*) ;
 int vm_page_wired (TYPE_2__*) ;
 int vm_page_xunbusy (TYPE_2__*) ;
 int vm_wait (TYPE_3__*) ;

void
vm_fault_copy_entry(vm_map_t dst_map, vm_map_t src_map,
    vm_map_entry_t dst_entry, vm_map_entry_t src_entry,
    vm_ooffset_t *fork_charge)
{
 vm_object_t backing_object, dst_object, object, src_object;
 vm_pindex_t dst_pindex, pindex, src_pindex;
 vm_prot_t access, prot;
 vm_offset_t vaddr;
 vm_page_t dst_m;
 vm_page_t src_m;
 boolean_t upgrade;





 upgrade = src_entry == dst_entry;
 access = prot = dst_entry->protection;

 src_object = src_entry->object.vm_object;
 src_pindex = OFF_TO_IDX(src_entry->offset);

 if (upgrade && (dst_entry->eflags & MAP_ENTRY_NEEDS_COPY) == 0) {
  dst_object = src_object;
  vm_object_reference(dst_object);
 } else {




  dst_object = vm_object_allocate(OBJT_DEFAULT,
      atop(dst_entry->end - dst_entry->start));




  dst_object->domain = src_object->domain;
  dst_object->charge = dst_entry->end - dst_entry->start;
 }

 VM_OBJECT_WLOCK(dst_object);
 KASSERT(upgrade || dst_entry->object.vm_object == ((void*)0),
     ("vm_fault_copy_entry: vm_object not NULL"));
 if (src_object != dst_object) {
  dst_entry->object.vm_object = dst_object;
  dst_entry->offset = 0;
  dst_entry->eflags &= ~MAP_ENTRY_VN_EXEC;
 }
 if (fork_charge != ((void*)0)) {
  KASSERT(dst_entry->cred == ((void*)0),
      ("vm_fault_copy_entry: leaked swp charge"));
  dst_object->cred = curthread->td_ucred;
  crhold(dst_object->cred);
  *fork_charge += dst_object->charge;
 } else if ((dst_object->type == OBJT_DEFAULT ||
     dst_object->type == OBJT_SWAP) &&
     dst_object->cred == ((void*)0)) {
  KASSERT(dst_entry->cred != ((void*)0), ("no cred for entry %p",
      dst_entry));
  dst_object->cred = dst_entry->cred;
  dst_entry->cred = ((void*)0);
 }
 if (!upgrade)
  access &= ~VM_PROT_WRITE;
 for (vaddr = dst_entry->start, dst_pindex = 0;
     vaddr < dst_entry->end;
     vaddr += PAGE_SIZE, dst_pindex++) {
again:





  if (src_object != dst_object)
   VM_OBJECT_RLOCK(src_object);
  object = src_object;
  pindex = src_pindex + dst_pindex;
  while ((src_m = vm_page_lookup(object, pindex)) == ((void*)0) &&
      (backing_object = object->backing_object) != ((void*)0)) {
   KASSERT((src_entry->protection & VM_PROT_WRITE) == 0 ||
       upgrade,
       ("vm_fault_copy_entry: main object missing page"));

   VM_OBJECT_RLOCK(backing_object);
   pindex += OFF_TO_IDX(object->backing_object_offset);
   if (object != dst_object)
    VM_OBJECT_RUNLOCK(object);
   object = backing_object;
  }
  KASSERT(src_m != ((void*)0), ("vm_fault_copy_entry: page missing"));

  if (object != dst_object) {



   dst_m = vm_page_alloc(dst_object, (src_object ==
       dst_object ? src_pindex : 0) + dst_pindex,
       VM_ALLOC_NORMAL);
   if (dst_m == ((void*)0)) {
    VM_OBJECT_WUNLOCK(dst_object);
    VM_OBJECT_RUNLOCK(object);
    vm_wait(dst_object);
    VM_OBJECT_WLOCK(dst_object);
    goto again;
   }
   pmap_copy_page(src_m, dst_m);
   VM_OBJECT_RUNLOCK(object);
   dst_m->dirty = dst_m->valid = src_m->valid;
  } else {
   dst_m = src_m;
   if (vm_page_busy_acquire(dst_m, VM_ALLOC_WAITFAIL) == 0)
    goto again;
   if (dst_m->pindex >= dst_object->size) {





    vm_page_xunbusy(dst_m);
    break;
   }
  }
  VM_OBJECT_WUNLOCK(dst_object);
  if (vm_page_all_valid(dst_m)) {
   pmap_enter(dst_map->pmap, vaddr, dst_m, prot,
       access | (upgrade ? PMAP_ENTER_WIRED : 0), 0);
  }




  VM_OBJECT_WLOCK(dst_object);

  if (upgrade) {
   if (src_m != dst_m) {
    vm_page_unwire(src_m, PQ_INACTIVE);
    vm_page_wire(dst_m);
   } else {
    KASSERT(vm_page_wired(dst_m),
        ("dst_m %p is not wired", dst_m));
   }
  } else {
   vm_page_lock(dst_m);
   vm_page_activate(dst_m);
   vm_page_unlock(dst_m);
  }
  vm_page_xunbusy(dst_m);
 }
 VM_OBJECT_WUNLOCK(dst_object);
 if (upgrade) {
  dst_entry->eflags &= ~(MAP_ENTRY_COW | MAP_ENTRY_NEEDS_COPY);
  vm_object_deallocate(src_object);
 }
}
