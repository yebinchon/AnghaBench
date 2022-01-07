
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_ooffset_t ;
typedef int vm_offset_t ;
typedef int vm_object_t ;
typedef int vm_map_t ;
typedef int uintmax_t ;


 int KASSERT (int,char*) ;
 int KERN_NO_SPACE ;
 int KERN_SUCCESS ;
 int VM_MAP_ASSERT_LOCKED (int ) ;
 int pmap_align_superpage (int ,int ,int*,int) ;
 int vm_map_findspace (int ,int,int) ;
 int vm_map_max (int ) ;

__attribute__((used)) static int
vm_map_alignspace(vm_map_t map, vm_object_t object, vm_ooffset_t offset,
    vm_offset_t *addr, vm_size_t length, vm_offset_t max_addr,
    vm_offset_t alignment)
{
 vm_offset_t aligned_addr, free_addr;

 VM_MAP_ASSERT_LOCKED(map);
 free_addr = *addr;
 KASSERT(free_addr == vm_map_findspace(map, free_addr, length),
     ("caller failed to provide space %#jx at address %p",
      (uintmax_t)length, (void *)free_addr));
 for (;;) {




  if (alignment == 0)
   pmap_align_superpage(object, offset, addr, length);
  else if ((*addr & (alignment - 1)) != 0) {
   *addr &= ~(alignment - 1);
   *addr += alignment;
  }
  aligned_addr = *addr;
  if (aligned_addr == free_addr) {




   return (KERN_SUCCESS);
  }






  if (aligned_addr < free_addr)
   return (KERN_NO_SPACE);
  *addr = vm_map_findspace(map, aligned_addr, length);
  if (*addr + length > vm_map_max(map) ||
      (max_addr != 0 && *addr + length > max_addr))
   return (KERN_NO_SPACE);
  free_addr = *addr;
  if (free_addr == aligned_addr) {





   return (KERN_SUCCESS);
  }
 }
}
