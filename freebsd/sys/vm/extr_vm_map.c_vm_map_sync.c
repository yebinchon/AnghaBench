
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_object_t ;
typedef TYPE_2__* vm_map_t ;
typedef TYPE_3__* vm_map_entry_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_12__ {int vm_object; TYPE_2__* sub_map; } ;
struct TYPE_14__ {scalar_t__ start; scalar_t__ end; int eflags; scalar_t__ offset; TYPE_1__ object; } ;
struct TYPE_13__ {unsigned int timestamp; int pmap; } ;


 scalar_t__ FALSE ;
 int KERN_FAILURE ;
 int KERN_INVALID_ADDRESS ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int MAP_ENTRY_IS_SUB_MAP ;
 int MAP_ENTRY_USER_WIRED ;
 scalar_t__ TRUE ;
 int VM_MAP_RANGE_CHECK (TYPE_2__*,scalar_t__,scalar_t__) ;
 int pmap_remove (int ,scalar_t__,scalar_t__) ;
 TYPE_3__* vm_map_entry_succ (TYPE_3__*) ;
 int vm_map_lock_read (TYPE_2__*) ;
 int vm_map_lookup_entry (TYPE_2__*,scalar_t__,TYPE_3__**) ;
 int vm_map_unlock_read (TYPE_2__*) ;
 int vm_object_deallocate (int ) ;
 int vm_object_reference (int ) ;
 int vm_object_sync (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

int
vm_map_sync(
 vm_map_t map,
 vm_offset_t start,
 vm_offset_t end,
 boolean_t syncio,
 boolean_t invalidate)
{
 vm_map_entry_t current;
 vm_map_entry_t entry;
 vm_size_t size;
 vm_object_t object;
 vm_ooffset_t offset;
 unsigned int last_timestamp;
 boolean_t failed;

 vm_map_lock_read(map);
 VM_MAP_RANGE_CHECK(map, start, end);
 if (!vm_map_lookup_entry(map, start, &entry)) {
  vm_map_unlock_read(map);
  return (KERN_INVALID_ADDRESS);
 } else if (start == end) {
  start = entry->start;
  end = entry->end;
 }



 for (current = entry; current->start < end;
     current = vm_map_entry_succ(current)) {
  if (invalidate && (current->eflags & MAP_ENTRY_USER_WIRED)) {
   vm_map_unlock_read(map);
   return (KERN_INVALID_ARGUMENT);
  }
  if (end > current->end &&
      current->end != vm_map_entry_succ(current)->start) {
   vm_map_unlock_read(map);
   return (KERN_INVALID_ADDRESS);
  }
 }

 if (invalidate)
  pmap_remove(map->pmap, start, end);
 failed = FALSE;





 for (current = entry; current->start < end;) {
  offset = current->offset + (start - current->start);
  size = (end <= current->end ? end : current->end) - start;
  if (current->eflags & MAP_ENTRY_IS_SUB_MAP) {
   vm_map_t smap;
   vm_map_entry_t tentry;
   vm_size_t tsize;

   smap = current->object.sub_map;
   vm_map_lock_read(smap);
   (void) vm_map_lookup_entry(smap, offset, &tentry);
   tsize = tentry->end - offset;
   if (tsize < size)
    size = tsize;
   object = tentry->object.vm_object;
   offset = tentry->offset + (offset - tentry->start);
   vm_map_unlock_read(smap);
  } else {
   object = current->object.vm_object;
  }
  vm_object_reference(object);
  last_timestamp = map->timestamp;
  vm_map_unlock_read(map);
  if (!vm_object_sync(object, offset, size, syncio, invalidate))
   failed = TRUE;
  start += size;
  vm_object_deallocate(object);
  vm_map_lock_read(map);
  if (last_timestamp == map->timestamp ||
      !vm_map_lookup_entry(map, start, &current))
   current = vm_map_entry_succ(current);
 }

 vm_map_unlock_read(map);
 return (failed ? KERN_FAILURE : KERN_SUCCESS);
}
