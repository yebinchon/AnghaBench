
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int vm_map_t ;


 int VM_MAP_RANGE_CHECK (int ,int ,int ) ;
 int vm_map_delete (int ,int ,int ) ;
 int vm_map_lock (int ) ;
 int vm_map_unlock (int ) ;

int
vm_map_remove(vm_map_t map, vm_offset_t start, vm_offset_t end)
{
 int result;

 vm_map_lock(map);
 VM_MAP_RANGE_CHECK(map, start, end);
 result = vm_map_delete(map, start, end);
 vm_map_unlock(map);
 return (result);
}
