
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef TYPE_1__* vm_map_t ;
typedef TYPE_2__* vm_map_entry_t ;
typedef scalar_t__ u_int ;
struct TYPE_14__ {int eflags; int start; } ;
struct TYPE_13__ {scalar_t__ timestamp; } ;


 int KASSERT (int,char*) ;
 int MAP_ENTRY_IN_TRANSITION ;
 int MAP_ENTRY_NEEDS_WAKEUP ;
 int MAX (int ,int ) ;
 int VM_MAP_ASSERT_LOCKED (TYPE_1__*) ;
 TYPE_2__* vm_map_entry_succ (TYPE_2__*) ;
 int vm_map_lock (TYPE_1__*) ;
 int vm_map_lookup_entry (TYPE_1__*,int ,TYPE_2__**) ;
 scalar_t__ vm_map_unlock_and_wait (TYPE_1__*,int ) ;

__attribute__((used)) static vm_map_entry_t
vm_map_entry_in_transition(vm_map_t map, vm_offset_t in_start,
    vm_offset_t *io_end, bool holes_ok, vm_map_entry_t in_entry)
{
 vm_map_entry_t entry;
 vm_offset_t start;
 u_int last_timestamp;

 VM_MAP_ASSERT_LOCKED(map);
 KASSERT((in_entry->eflags & MAP_ENTRY_IN_TRANSITION) != 0,
     ("not in-tranition map entry %p", in_entry));



 start = MAX(in_start, in_entry->start);
 in_entry->eflags |= MAP_ENTRY_NEEDS_WAKEUP;
 last_timestamp = map->timestamp;
 if (vm_map_unlock_and_wait(map, 0)) {



 }
 vm_map_lock(map);
 if (last_timestamp + 1 == map->timestamp)
  return (in_entry);






 if (!vm_map_lookup_entry(map, start, &entry)) {
  if (!holes_ok) {
   *io_end = start;
   return (((void*)0));
  }
  entry = vm_map_entry_succ(entry);
 }
 return (entry);
}
