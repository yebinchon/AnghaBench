
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_prot_t ;
typedef int vm_ooffset_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_object_t ;
typedef int vm_map_t ;


 int KERN_SUCCESS ;
 int vm_map_find (int ,int ,int ,scalar_t__*,int ,scalar_t__,int,int ,int ,int) ;

int
vm_map_find_min(vm_map_t map, vm_object_t object, vm_ooffset_t offset,
    vm_offset_t *addr, vm_size_t length, vm_offset_t min_addr,
    vm_offset_t max_addr, int find_space, vm_prot_t prot, vm_prot_t max,
    int cow)
{
 vm_offset_t hint;
 int rv;

 hint = *addr;
 for (;;) {
  rv = vm_map_find(map, object, offset, addr, length, max_addr,
      find_space, prot, max, cow);
  if (rv == KERN_SUCCESS || min_addr >= hint)
   return (rv);
  *addr = hint = min_addr;
 }
}
