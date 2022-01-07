
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t vm_size_t ;
typedef size_t vm_offset_t ;
typedef int * vm_map_t ;
struct thread {TYPE_2__* td_proc; } ;
struct TYPE_4__ {TYPE_1__* p_vmspace; } ;
struct TYPE_3__ {int vm_map; } ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;




 int MS_ASYNC ;
 int MS_INVALIDATE ;
 size_t PAGE_MASK ;
 scalar_t__ round_page (size_t) ;
 int vm_map_sync (int *,size_t,size_t,int,int) ;

int
kern_msync(struct thread *td, uintptr_t addr0, size_t size, int flags)
{
 vm_offset_t addr;
 vm_size_t pageoff;
 vm_map_t map;
 int rv;

 addr = addr0;
 pageoff = (addr & PAGE_MASK);
 addr -= pageoff;
 size += pageoff;
 size = (vm_size_t) round_page(size);
 if (addr + size < addr)
  return (EINVAL);

 if ((flags & (MS_ASYNC|MS_INVALIDATE)) == (MS_ASYNC|MS_INVALIDATE))
  return (EINVAL);

 map = &td->td_proc->p_vmspace->vm_map;




 rv = vm_map_sync(map, addr, addr + size, (flags & MS_ASYNC) == 0,
     (flags & MS_INVALIDATE) != 0);
 switch (rv) {
 case 128:
  return (0);
 case 130:
  return (ENOMEM);
 case 129:
  return (EBUSY);
 case 131:
  return (EIO);
 default:
  return (EINVAL);
 }
}
