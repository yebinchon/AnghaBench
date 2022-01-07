
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int vm_map_t ;


 int vm_map_lock (int ) ;
 int vm_map_unlock (int ) ;
 int vm_map_wire_locked (int ,int ,int ,int) ;

int
vm_map_wire(vm_map_t map, vm_offset_t start, vm_offset_t end, int flags)
{
 int rv;

 vm_map_lock(map);
 rv = vm_map_wire_locked(map, start, end, flags);
 vm_map_unlock(map);
 return (rv);
}
