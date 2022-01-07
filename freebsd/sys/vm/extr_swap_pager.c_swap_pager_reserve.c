
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ vm_pindex_t ;
typedef int vm_object_t ;
typedef scalar_t__ daddr_t ;


 scalar_t__ SWAPBLK_NONE ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int swp_pager_freeswapspace (scalar_t__,scalar_t__) ;
 scalar_t__ swp_pager_getswapspace (int*,int) ;
 int swp_pager_init_freerange (scalar_t__*,scalar_t__*) ;
 scalar_t__ swp_pager_meta_build (int ,scalar_t__,scalar_t__) ;
 int swp_pager_meta_free (int ,scalar_t__,int) ;
 int swp_pager_update_freerange (scalar_t__*,scalar_t__*,scalar_t__) ;

int
swap_pager_reserve(vm_object_t object, vm_pindex_t start, vm_size_t size)
{
 daddr_t addr, blk, n_free, s_free;
 int i, j, n;

 swp_pager_init_freerange(&s_free, &n_free);
 VM_OBJECT_WLOCK(object);
 for (i = 0; i < size; i += n) {
  n = size - i;
  blk = swp_pager_getswapspace(&n, 1);
  if (blk == SWAPBLK_NONE) {
   swp_pager_meta_free(object, start, i);
   VM_OBJECT_WUNLOCK(object);
   return (-1);
  }
  for (j = 0; j < n; ++j) {
   addr = swp_pager_meta_build(object,
       start + i + j, blk + j);
   if (addr != SWAPBLK_NONE)
    swp_pager_update_freerange(&s_free, &n_free,
        addr);
  }
 }
 swp_pager_freeswapspace(s_free, n_free);
 VM_OBJECT_WUNLOCK(object);
 return (0);
}
