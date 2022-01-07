
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_1__* vm_map_t ;
struct TYPE_10__ {int needs_wakeup; } ;


 int MAP_ACC_CHARGED ;
 int TRUE ;
 int VM_PROT_RW ;
 scalar_t__ round_page (scalar_t__) ;
 int swap_release (scalar_t__) ;
 int swap_reserve (scalar_t__) ;
 scalar_t__ vm_map_findspace (TYPE_1__*,scalar_t__,scalar_t__) ;
 int vm_map_insert (TYPE_1__*,int *,int ,scalar_t__,scalar_t__,int ,int ,int ) ;
 int vm_map_lock (TYPE_1__*) ;
 scalar_t__ vm_map_max (TYPE_1__*) ;
 scalar_t__ vm_map_min (TYPE_1__*) ;
 int vm_map_unlock (TYPE_1__*) ;
 int vm_map_unlock_and_wait (TYPE_1__*,int ) ;

vm_offset_t
kmap_alloc_wait(vm_map_t map, vm_size_t size)
{
 vm_offset_t addr;

 size = round_page(size);
 if (!swap_reserve(size))
  return (0);

 for (;;) {




  vm_map_lock(map);
  addr = vm_map_findspace(map, vm_map_min(map), size);
  if (addr + size <= vm_map_max(map))
   break;

  if (vm_map_max(map) - vm_map_min(map) < size) {
   vm_map_unlock(map);
   swap_release(size);
   return (0);
  }
  map->needs_wakeup = TRUE;
  vm_map_unlock_and_wait(map, 0);
 }
 vm_map_insert(map, ((void*)0), 0, addr, addr + size, VM_PROT_RW, VM_PROT_RW,
     MAP_ACC_CHARGED);
 vm_map_unlock(map);
 return (addr);
}
