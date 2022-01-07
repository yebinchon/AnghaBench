
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_2__* vm_map_t ;
struct ucred {int dummy; } ;
struct proc {TYPE_1__* p_vmspace; } ;
struct TYPE_5__ {int pmap; } ;
struct TYPE_4__ {TYPE_2__ vm_map; } ;


 int EINVAL ;
 int ENOMEM ;
 int KERN_SUCCESS ;
 int PRIV_VM_MLOCK ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int RACCT_MEMLOCK ;
 int RLIMIT_MEMLOCK ;
 int VM_MAP_WIRE_NOHOLES ;
 int VM_MAP_WIRE_USER ;
 scalar_t__ atop (scalar_t__) ;
 unsigned long lim_cur_proc (struct proc*,int ) ;
 scalar_t__ pmap_wired_count (int ) ;
 int priv_check_cred (struct ucred*,int ) ;
 unsigned long ptoa (scalar_t__) ;
 scalar_t__ racct_enable ;
 int racct_set (struct proc*,int ,unsigned long) ;
 scalar_t__ round_page (scalar_t__) ;
 scalar_t__ trunc_page (scalar_t__) ;
 int vm_map_wire (TYPE_2__*,scalar_t__,scalar_t__,int) ;
 scalar_t__ vm_page_max_user_wired ;

int
kern_mlock(struct proc *proc, struct ucred *cred, uintptr_t addr0, size_t len)
{
 vm_offset_t addr, end, last, start;
 vm_size_t npages, size;
 vm_map_t map;
 unsigned long nsize;
 int error;

 error = priv_check_cred(cred, PRIV_VM_MLOCK);
 if (error)
  return (error);
 addr = addr0;
 size = len;
 last = addr + size;
 start = trunc_page(addr);
 end = round_page(last);
 if (last < addr || end < addr)
  return (EINVAL);
 npages = atop(end - start);
 if (npages > vm_page_max_user_wired)
  return (ENOMEM);
 map = &proc->p_vmspace->vm_map;
 PROC_LOCK(proc);
 nsize = ptoa(npages + pmap_wired_count(map->pmap));
 if (nsize > lim_cur_proc(proc, RLIMIT_MEMLOCK)) {
  PROC_UNLOCK(proc);
  return (ENOMEM);
 }
 PROC_UNLOCK(proc);
 error = vm_map_wire(map, start, end,
     VM_MAP_WIRE_USER | VM_MAP_WIRE_NOHOLES);
 return (error == KERN_SUCCESS ? 0 : ENOMEM);
}
