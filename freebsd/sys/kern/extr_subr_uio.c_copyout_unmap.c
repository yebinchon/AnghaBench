
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int * vm_map_t ;
struct thread {TYPE_2__* td_proc; } ;
struct TYPE_4__ {TYPE_1__* p_vmspace; } ;
struct TYPE_3__ {int vm_map; } ;


 int EINVAL ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ round_page (size_t) ;
 scalar_t__ vm_map_remove (int *,scalar_t__,scalar_t__) ;

int
copyout_unmap(struct thread *td, vm_offset_t addr, size_t sz)
{
 vm_map_t map;
 vm_size_t size;

 if (sz == 0)
  return (0);

 map = &td->td_proc->p_vmspace->vm_map;
 size = (vm_size_t)round_page(sz);

 if (vm_map_remove(map, addr, addr + size) != KERN_SUCCESS)
  return (EINVAL);

 return (0);
}
