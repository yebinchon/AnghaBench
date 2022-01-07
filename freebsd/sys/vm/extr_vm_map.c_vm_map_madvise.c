
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef scalar_t__ vm_pindex_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_2__* vm_map_t ;
typedef TYPE_3__* vm_map_entry_t ;
struct TYPE_28__ {int * backing_object; } ;
struct TYPE_25__ {TYPE_4__* vm_object; } ;
struct TYPE_27__ {scalar_t__ start; int eflags; scalar_t__ end; scalar_t__ wired_count; TYPE_1__ object; int protection; int offset; } ;
struct TYPE_26__ {int pmap; } ;


 int EINVAL ;
 int MAP_ENTRY_BEHAV_NORMAL ;
 int MAP_ENTRY_BEHAV_RANDOM ;
 int MAP_ENTRY_BEHAV_SEQUENTIAL ;
 int MAP_ENTRY_IS_SUB_MAP ;
 int MAP_ENTRY_NOCOREDUMP ;
 int MAP_ENTRY_NOSYNC ;
 int MAP_PREFAULT_MADVISE ;
 scalar_t__ OFF_TO_IDX (int ) ;
 int VM_MAP_RANGE_CHECK (TYPE_2__*,scalar_t__,scalar_t__) ;
 scalar_t__ atop (scalar_t__) ;
 int pmap_advise (int ,scalar_t__,scalar_t__,int) ;
 int ptoa (scalar_t__) ;
 int vm_map_clip_end (TYPE_2__*,TYPE_3__*,scalar_t__) ;
 int vm_map_clip_start (TYPE_2__*,TYPE_3__*,scalar_t__) ;
 int vm_map_entry_pred (TYPE_3__*) ;
 int vm_map_entry_set_behavior (TYPE_3__*,int ) ;
 TYPE_3__* vm_map_entry_succ (TYPE_3__*) ;
 int vm_map_lock (TYPE_2__*) ;
 int vm_map_lock_read (TYPE_2__*) ;
 scalar_t__ vm_map_lookup_entry (TYPE_2__*,scalar_t__,TYPE_3__**) ;
 int vm_map_pmap_enter (TYPE_2__*,scalar_t__,int ,TYPE_4__*,scalar_t__,int ,int ) ;
 int vm_map_try_merge_entries (TYPE_2__*,int ,TYPE_3__*) ;
 int vm_map_unlock (TYPE_2__*) ;
 int vm_map_unlock_read (TYPE_2__*) ;
 int vm_object_madvise (TYPE_4__*,scalar_t__,scalar_t__,int) ;

int
vm_map_madvise(
 vm_map_t map,
 vm_offset_t start,
 vm_offset_t end,
 int behav)
{
 vm_map_entry_t current, entry;
 bool modify_map;







 switch(behav) {
 case 132:
 case 129:
 case 130:
 case 131:
 case 137:
 case 133:
 case 136:
  if (start == end)
   return (0);
  modify_map = 1;
  vm_map_lock(map);
  break;
 case 128:
 case 135:
 case 134:
  if (start == end)
   return (0);
  modify_map = 0;
  vm_map_lock_read(map);
  break;
 default:
  return (EINVAL);
 }




 VM_MAP_RANGE_CHECK(map, start, end);

 if (vm_map_lookup_entry(map, start, &entry)) {
  if (modify_map)
   vm_map_clip_start(map, entry, start);
 } else {
  entry = vm_map_entry_succ(entry);
 }

 if (modify_map) {






  for (current = entry; current->start < end;
      current = vm_map_entry_succ(current)) {
   if (current->eflags & MAP_ENTRY_IS_SUB_MAP)
    continue;

   vm_map_clip_end(map, current, end);

   switch (behav) {
   case 132:
    vm_map_entry_set_behavior(current, MAP_ENTRY_BEHAV_NORMAL);
    break;
   case 129:
    vm_map_entry_set_behavior(current, MAP_ENTRY_BEHAV_SEQUENTIAL);
    break;
   case 130:
    vm_map_entry_set_behavior(current, MAP_ENTRY_BEHAV_RANDOM);
    break;
   case 131:
    current->eflags |= MAP_ENTRY_NOSYNC;
    break;
   case 137:
    current->eflags &= ~MAP_ENTRY_NOSYNC;
    break;
   case 133:
    current->eflags |= MAP_ENTRY_NOCOREDUMP;
    break;
   case 136:
    current->eflags &= ~MAP_ENTRY_NOCOREDUMP;
    break;
   default:
    break;
   }
   vm_map_try_merge_entries(map,
       vm_map_entry_pred(current), current);
  }
  vm_map_try_merge_entries(map, vm_map_entry_pred(current),
      current);
  vm_map_unlock(map);
 } else {
  vm_pindex_t pstart, pend;
  for (current = entry; current->start < end;
      current = vm_map_entry_succ(current)) {
   vm_offset_t useEnd, useStart;

   if (current->eflags & MAP_ENTRY_IS_SUB_MAP)
    continue;
   if (behav == 134 &&
       current->object.vm_object != ((void*)0) &&
       current->object.vm_object->backing_object != ((void*)0))
    continue;

   pstart = OFF_TO_IDX(current->offset);
   pend = pstart + atop(current->end - current->start);
   useStart = current->start;
   useEnd = current->end;

   if (current->start < start) {
    pstart += atop(start - current->start);
    useStart = start;
   }
   if (current->end > end) {
    pend -= atop(current->end - end);
    useEnd = end;
   }

   if (pstart >= pend)
    continue;
   if (behav == 135 || behav == 134)
    pmap_advise(map->pmap, useStart, useEnd,
        behav);

   vm_object_madvise(current->object.vm_object, pstart,
       pend, behav);






   if (behav == 128 &&
       current->wired_count == 0) {
    vm_map_pmap_enter(map,
        useStart,
        current->protection,
        current->object.vm_object,
        pstart,
        ptoa(pend - pstart),
        MAP_PREFAULT_MADVISE
    );
   }
  }
  vm_map_unlock_read(map);
 }
 return (0);
}
