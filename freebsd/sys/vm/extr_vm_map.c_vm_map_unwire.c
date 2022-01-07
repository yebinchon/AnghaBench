
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int vm_map_t ;
typedef TYPE_1__* vm_map_entry_t ;
struct TYPE_13__ {scalar_t__ start; int eflags; scalar_t__ end; int wired_count; int * wiring_thread; } ;


 int KASSERT (int,char*) ;
 int KERN_INVALID_ADDRESS ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int MAP_ENTRY_IN_TRANSITION ;
 int MAP_ENTRY_NEEDS_WAKEUP ;
 int MAP_ENTRY_USER_WIRED ;
 int VM_MAP_RANGE_CHECK (int ,scalar_t__,scalar_t__) ;
 int VM_MAP_WIRE_HOLESOK ;
 int VM_MAP_WIRE_USER ;
 int * curthread ;
 int vm_map_clip_end (int ,TYPE_1__*,scalar_t__) ;
 int vm_map_clip_start (int ,TYPE_1__*,scalar_t__) ;
 TYPE_1__* vm_map_entry_in_transition (int ,scalar_t__,scalar_t__*,int,TYPE_1__*) ;
 int vm_map_entry_pred (TYPE_1__*) ;
 TYPE_1__* vm_map_entry_succ (TYPE_1__*) ;
 scalar_t__ vm_map_entry_system_wired_count (TYPE_1__*) ;
 int vm_map_entry_unwire (int ,TYPE_1__*) ;
 int vm_map_lock (int ) ;
 int vm_map_lookup_entry (int ,scalar_t__,TYPE_1__**) ;
 int vm_map_try_merge_entries (int ,int ,TYPE_1__*) ;
 int vm_map_unlock (int ) ;
 int vm_map_wakeup (int ) ;

int
vm_map_unwire(vm_map_t map, vm_offset_t start, vm_offset_t end,
    int flags)
{
 vm_map_entry_t entry, first_entry;
 int rv;
 bool first_iteration, holes_ok, need_wakeup, user_unwire;

 if (start == end)
  return (KERN_SUCCESS);
 holes_ok = (flags & VM_MAP_WIRE_HOLESOK) != 0;
 user_unwire = (flags & VM_MAP_WIRE_USER) != 0;
 vm_map_lock(map);
 VM_MAP_RANGE_CHECK(map, start, end);
 if (!vm_map_lookup_entry(map, start, &first_entry)) {
  if (holes_ok)
   first_entry = vm_map_entry_succ(first_entry);
  else {
   vm_map_unlock(map);
   return (KERN_INVALID_ADDRESS);
  }
 }
 first_iteration = 1;
 entry = first_entry;
 rv = KERN_SUCCESS;
 while (entry->start < end) {
  if (entry->eflags & MAP_ENTRY_IN_TRANSITION) {



   entry = vm_map_entry_in_transition(map, start, &end,
       holes_ok, entry);
   if (entry == ((void*)0)) {
    if (first_iteration) {
     vm_map_unlock(map);
     return (KERN_INVALID_ADDRESS);
    }
    rv = KERN_INVALID_ADDRESS;
    break;
   }
   first_entry = first_iteration ? entry : ((void*)0);
   continue;
  }
  first_iteration = 0;
  vm_map_clip_start(map, entry, start);
  vm_map_clip_end(map, entry, end);




  KASSERT((entry->eflags & MAP_ENTRY_IN_TRANSITION) == 0 &&
      entry->wiring_thread == ((void*)0),
      ("owned map entry %p", entry));
  entry->eflags |= MAP_ENTRY_IN_TRANSITION;
  entry->wiring_thread = curthread;




  if (!holes_ok &&
      (entry->end < end &&
      vm_map_entry_succ(entry)->start > entry->end)) {
   end = entry->end;
   rv = KERN_INVALID_ADDRESS;
   break;
  }



  if (!user_unwire &&
      vm_map_entry_system_wired_count(entry) == 0) {
   end = entry->end;
   rv = KERN_INVALID_ARGUMENT;
   break;
  }
  entry = vm_map_entry_succ(entry);
 }
 need_wakeup = 0;
 if (first_entry == ((void*)0) &&
     !vm_map_lookup_entry(map, start, &first_entry)) {
  KASSERT(holes_ok, ("vm_map_unwire: lookup failed"));
  first_entry = vm_map_entry_succ(first_entry);
 }
 for (entry = first_entry; entry->start < end;
     entry = vm_map_entry_succ(entry)) {
  if ((entry->eflags & MAP_ENTRY_IN_TRANSITION) == 0 ||
      entry->wiring_thread != curthread) {
   KASSERT(holes_ok,
       ("vm_map_unwire: !HOLESOK and new/changed entry"));
   continue;
  }

  if (rv == KERN_SUCCESS && (!user_unwire ||
      (entry->eflags & MAP_ENTRY_USER_WIRED))) {
   if (entry->wired_count == 1)
    vm_map_entry_unwire(map, entry);
   else
    entry->wired_count--;
   if (user_unwire)
    entry->eflags &= ~MAP_ENTRY_USER_WIRED;
  }
  KASSERT((entry->eflags & MAP_ENTRY_IN_TRANSITION) != 0,
      ("vm_map_unwire: in-transition flag missing %p", entry));
  KASSERT(entry->wiring_thread == curthread,
      ("vm_map_unwire: alien wire %p", entry));
  entry->eflags &= ~MAP_ENTRY_IN_TRANSITION;
  entry->wiring_thread = ((void*)0);
  if (entry->eflags & MAP_ENTRY_NEEDS_WAKEUP) {
   entry->eflags &= ~MAP_ENTRY_NEEDS_WAKEUP;
   need_wakeup = 1;
  }
  vm_map_try_merge_entries(map, vm_map_entry_pred(entry), entry);
 }
 vm_map_try_merge_entries(map, vm_map_entry_pred(entry), entry);
 vm_map_unlock(map);
 if (need_wakeup)
  vm_map_wakeup(map);
 return (rv);
}
