
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t vm_offset_t ;
typedef int * vm_map_t ;
struct thread {TYPE_2__* td_proc; } ;
struct TYPE_4__ {TYPE_1__* p_vmspace; int p_pid; } ;
struct TYPE_3__ {int vm_map; } ;


 int EINVAL ;
 int MADV_PROTECT ;
 int PPROT_SET ;
 int PROC_SPROTECT ;
 int P_PID ;
 int kern_procctl (struct thread*,int ,int ,int ,int*) ;
 size_t round_page (size_t) ;
 size_t trunc_page (size_t) ;
 int vm_map_madvise (int *,size_t,size_t,int) ;
 size_t vm_map_max (int *) ;
 size_t vm_map_min (int *) ;

int
kern_madvise(struct thread *td, uintptr_t addr0, size_t len, int behav)
{
 vm_map_t map;
 vm_offset_t addr, end, start;
 int flags;





 if (behav == MADV_PROTECT) {
  flags = PPROT_SET;
  return (kern_procctl(td, P_PID, td->td_proc->p_pid,
      PROC_SPROTECT, &flags));
 }





 map = &td->td_proc->p_vmspace->vm_map;
 addr = addr0;
 if (addr < vm_map_min(map) || addr + len > vm_map_max(map))
  return (EINVAL);
 if ((addr + len) < addr)
  return (EINVAL);





 start = trunc_page(addr);
 end = round_page(addr + len);




 return (vm_map_madvise(map, start, end, behav));
}
