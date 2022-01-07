
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_map_entry_t ;
struct TYPE_13__ {int eflags; } ;
struct TYPE_12__ {int oflags; scalar_t__ dirty; int object; } ;


 int MAP_ENTRY_NOSYNC ;
 int PGA_NOSYNC ;
 int VM_FAULT_DIRTY ;
 int VM_FAULT_WIRE ;
 int VM_OBJECT_ASSERT_LOCKED (int ) ;
 int VM_PAGE_OBJECT_BUSY_ASSERT (TYPE_1__*) ;
 int VM_PROT_WRITE ;
 int VPO_UNMANAGED ;
 int vm_object_set_writeable_dirty (int ) ;
 int vm_page_aflag_clear (TYPE_1__*,int ) ;
 int vm_page_aflag_set (TYPE_1__*,int ) ;
 int vm_page_dirty (TYPE_1__*) ;
 int vm_page_lock (TYPE_1__*) ;
 int vm_page_unlock (TYPE_1__*) ;
 int vm_pager_page_unswapped (TYPE_1__*) ;

__attribute__((used)) static void
vm_fault_dirty(vm_map_entry_t entry, vm_page_t m, vm_prot_t prot,
    vm_prot_t fault_type, int fault_flags, bool excl)
{
 bool need_dirty;

 if (((prot & VM_PROT_WRITE) == 0 &&
     (fault_flags & VM_FAULT_DIRTY) == 0) ||
     (m->oflags & VPO_UNMANAGED) != 0)
  return;

 VM_OBJECT_ASSERT_LOCKED(m->object);
 VM_PAGE_OBJECT_BUSY_ASSERT(m);

 need_dirty = ((fault_type & VM_PROT_WRITE) != 0 &&
     (fault_flags & VM_FAULT_WIRE) == 0) ||
     (fault_flags & VM_FAULT_DIRTY) != 0;

 vm_object_set_writeable_dirty(m->object);

 if (!excl)
  vm_page_lock(m);
 if ((entry->eflags & MAP_ENTRY_NOSYNC) != 0) {
  if (m->dirty == 0) {
   vm_page_aflag_set(m, PGA_NOSYNC);
  }
 } else {
  vm_page_aflag_clear(m, PGA_NOSYNC);
 }
 if (need_dirty)
  vm_page_dirty(m);
 if (!excl)
  vm_page_unlock(m);
 else if (need_dirty)
  vm_pager_page_unswapped(m);
}
