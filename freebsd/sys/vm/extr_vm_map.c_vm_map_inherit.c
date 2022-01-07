
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int vm_map_t ;
typedef TYPE_1__* vm_map_entry_t ;
typedef int vm_inherit_t ;
struct TYPE_9__ {int eflags; int inheritance; int start; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int MAP_ENTRY_GUARD ;




 int VM_MAP_RANGE_CHECK (int ,int ,int ) ;
 int vm_map_clip_end (int ,TYPE_1__*,int ) ;
 int vm_map_clip_start (int ,TYPE_1__*,int ) ;
 int vm_map_entry_pred (TYPE_1__*) ;
 TYPE_1__* vm_map_entry_succ (TYPE_1__*) ;
 int vm_map_lock (int ) ;
 scalar_t__ vm_map_lookup_entry (int ,int ,TYPE_1__**) ;
 int vm_map_try_merge_entries (int ,int ,TYPE_1__*) ;
 int vm_map_unlock (int ) ;

int
vm_map_inherit(vm_map_t map, vm_offset_t start, vm_offset_t end,
        vm_inherit_t new_inheritance)
{
 vm_map_entry_t entry;
 vm_map_entry_t temp_entry;

 switch (new_inheritance) {
 case 130:
 case 131:
 case 129:
 case 128:
  break;
 default:
  return (KERN_INVALID_ARGUMENT);
 }
 if (start == end)
  return (KERN_SUCCESS);
 vm_map_lock(map);
 VM_MAP_RANGE_CHECK(map, start, end);
 if (vm_map_lookup_entry(map, start, &temp_entry)) {
  entry = temp_entry;
  vm_map_clip_start(map, entry, start);
 } else
  entry = vm_map_entry_succ(temp_entry);
 while (entry->start < end) {
  vm_map_clip_end(map, entry, end);
  if ((entry->eflags & MAP_ENTRY_GUARD) == 0 ||
      new_inheritance != 128)
   entry->inheritance = new_inheritance;
  vm_map_try_merge_entries(map, vm_map_entry_pred(entry), entry);
  entry = vm_map_entry_succ(entry);
 }
 vm_map_try_merge_entries(map, vm_map_entry_pred(entry), entry);
 vm_map_unlock(map);
 return (KERN_SUCCESS);
}
