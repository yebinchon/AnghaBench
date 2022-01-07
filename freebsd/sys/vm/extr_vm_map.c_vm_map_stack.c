
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef int vm_prot_t ;
typedef int vm_offset_t ;
typedef TYPE_1__* vm_map_t ;
typedef scalar_t__ rlim_t ;
struct TYPE_6__ {int flags; scalar_t__ size; } ;


 int KERN_NO_SPACE ;
 int MAP_WIREFUTURE ;
 int MPASS (int) ;
 int RLIMIT_VMEM ;
 int curthread ;
 scalar_t__ lim_cur (int ,int ) ;
 scalar_t__ sgrowsiz ;
 int vm_map_lock (TYPE_1__*) ;
 int vm_map_stack_locked (TYPE_1__*,int ,scalar_t__,scalar_t__,int ,int ,int) ;
 int vm_map_unlock (TYPE_1__*) ;

int
vm_map_stack(vm_map_t map, vm_offset_t addrbos, vm_size_t max_ssize,
    vm_prot_t prot, vm_prot_t max, int cow)
{
 vm_size_t growsize, init_ssize;
 rlim_t vmemlim;
 int rv;

 MPASS((map->flags & MAP_WIREFUTURE) == 0);
 growsize = sgrowsiz;
 init_ssize = (max_ssize < growsize) ? max_ssize : growsize;
 vm_map_lock(map);
 vmemlim = lim_cur(curthread, RLIMIT_VMEM);

 if (map->size + init_ssize > vmemlim) {
  rv = KERN_NO_SPACE;
  goto out;
 }
 rv = vm_map_stack_locked(map, addrbos, max_ssize, growsize, prot,
     max, cow);
out:
 vm_map_unlock(map);
 return (rv);
}
