
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef TYPE_2__* vm_map_t ;
typedef TYPE_3__* vm_map_entry_t ;
struct TYPE_22__ {int * vm_object; } ;
struct TYPE_24__ {scalar_t__ start; int eflags; scalar_t__ wired_count; scalar_t__ end; TYPE_1__ object; } ;
struct TYPE_23__ {unsigned int timestamp; scalar_t__ anon_loc; int pmap; } ;


 int KERN_SUCCESS ;
 int MAP_ENTRY_IN_TRANSITION ;
 int MAP_ENTRY_IS_SUB_MAP ;
 int MAP_ENTRY_NEEDS_WAKEUP ;
 int VM_MAP_ASSERT_LOCKED (TYPE_2__*) ;
 scalar_t__ kernel_pmap ;
 int pmap_remove (int ,scalar_t__,scalar_t__) ;
 int vm_map_clip_end (TYPE_2__*,TYPE_3__*,scalar_t__) ;
 int vm_map_clip_start (TYPE_2__*,TYPE_3__*,scalar_t__) ;
 int vm_map_entry_delete (TYPE_2__*,TYPE_3__*) ;
 TYPE_3__* vm_map_entry_succ (TYPE_3__*) ;
 scalar_t__ vm_map_entry_system_wired_count (TYPE_3__*) ;
 int vm_map_entry_unwire (TYPE_2__*,TYPE_3__*) ;
 int vm_map_lock (TYPE_2__*) ;
 int vm_map_lookup_entry (TYPE_2__*,scalar_t__,TYPE_3__**) ;
 scalar_t__ vm_map_pmap (TYPE_2__*) ;
 int vm_map_unlock_and_wait (TYPE_2__*,int ) ;

int
vm_map_delete(vm_map_t map, vm_offset_t start, vm_offset_t end)
{
 vm_map_entry_t entry;
 vm_map_entry_t first_entry;

 VM_MAP_ASSERT_LOCKED(map);
 if (start == end)
  return (KERN_SUCCESS);




 if (!vm_map_lookup_entry(map, start, &first_entry))
  entry = vm_map_entry_succ(first_entry);
 else {
  entry = first_entry;
  vm_map_clip_start(map, entry, start);
 }




 while (entry->start < end) {
  vm_map_entry_t next;






  if ((entry->eflags & MAP_ENTRY_IN_TRANSITION) != 0 ||
      (vm_map_pmap(map) != kernel_pmap &&
      vm_map_entry_system_wired_count(entry) != 0)) {
   unsigned int last_timestamp;
   vm_offset_t saved_start;
   vm_map_entry_t tmp_entry;

   saved_start = entry->start;
   entry->eflags |= MAP_ENTRY_NEEDS_WAKEUP;
   last_timestamp = map->timestamp;
   (void) vm_map_unlock_and_wait(map, 0);
   vm_map_lock(map);
   if (last_timestamp + 1 != map->timestamp) {






    if (!vm_map_lookup_entry(map, saved_start,
        &tmp_entry))
     entry = vm_map_entry_succ(tmp_entry);
    else {
     entry = tmp_entry;
     vm_map_clip_start(map, entry,
         saved_start);
    }
   }
   continue;
  }
  vm_map_clip_end(map, entry, end);

  next = vm_map_entry_succ(entry);





  if (entry->wired_count != 0)
   vm_map_entry_unwire(map, entry);






  if ((entry->eflags & MAP_ENTRY_IS_SUB_MAP) != 0 ||
      entry->object.vm_object != ((void*)0))
   pmap_remove(map->pmap, entry->start, entry->end);

  if (entry->end == map->anon_loc)
   map->anon_loc = entry->start;







  vm_map_entry_delete(map, entry);
  entry = next;
 }
 return (KERN_SUCCESS);
}
