
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t vm_offset_t ;
typedef TYPE_2__* vm_map_t ;
struct thread {TYPE_4__* td_proc; } ;
struct TYPE_9__ {TYPE_1__* p_vmspace; } ;
struct TYPE_8__ {int pmap; } ;
struct TYPE_7__ {TYPE_2__ vm_map; } ;


 int EINVAL ;
 int ENOMEM ;
 int KERN_SUCCESS ;
 int PRIV_VM_MUNLOCK ;
 int PROC_LOCK (TYPE_4__*) ;
 int PROC_UNLOCK (TYPE_4__*) ;
 int RACCT_MEMLOCK ;
 int VM_MAP_WIRE_NOHOLES ;
 int VM_MAP_WIRE_USER ;
 int pmap_wired_count (int ) ;
 int priv_check (struct thread*,int ) ;
 int ptoa (int ) ;
 scalar_t__ racct_enable ;
 int racct_set (TYPE_4__*,int ,int ) ;
 size_t round_page (size_t) ;
 size_t trunc_page (size_t) ;
 int vm_map_unwire (TYPE_2__*,size_t,size_t,int) ;

int
kern_munlock(struct thread *td, uintptr_t addr0, size_t size)
{
 vm_offset_t addr, end, last, start;



 int error;

 error = priv_check(td, PRIV_VM_MUNLOCK);
 if (error)
  return (error);
 addr = addr0;
 last = addr + size;
 start = trunc_page(addr);
 end = round_page(last);
 if (last < addr || end < addr)
  return (EINVAL);
 error = vm_map_unwire(&td->td_proc->p_vmspace->vm_map, start, end,
     VM_MAP_WIRE_USER | VM_MAP_WIRE_NOHOLES);
 return (error == KERN_SUCCESS ? 0 : ENOMEM);
}
