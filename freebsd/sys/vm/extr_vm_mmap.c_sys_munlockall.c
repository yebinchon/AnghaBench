
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * vm_map_t ;
struct thread {TYPE_2__* td_proc; } ;
struct munlockall_args {int dummy; } ;
struct TYPE_6__ {TYPE_1__* p_vmspace; } ;
struct TYPE_5__ {int vm_map; } ;


 int KERN_SUCCESS ;
 int MAP_WIREFUTURE ;
 int PRIV_VM_MUNLOCK ;
 int PROC_LOCK (TYPE_2__*) ;
 int PROC_UNLOCK (TYPE_2__*) ;
 int RACCT_MEMLOCK ;
 int VM_MAP_WIRE_HOLESOK ;
 int VM_MAP_WIRE_USER ;
 int priv_check (struct thread*,int ) ;
 scalar_t__ racct_enable ;
 int racct_set (TYPE_2__*,int ,int ) ;
 int vm_map_lock (int *) ;
 int vm_map_max (int *) ;
 int vm_map_min (int *) ;
 int vm_map_modflags (int *,int ,int ) ;
 int vm_map_unlock (int *) ;
 int vm_map_unwire (int *,int ,int ,int) ;

int
sys_munlockall(struct thread *td, struct munlockall_args *uap)
{
 vm_map_t map;
 int error;

 map = &td->td_proc->p_vmspace->vm_map;
 error = priv_check(td, PRIV_VM_MUNLOCK);
 if (error)
  return (error);


 vm_map_lock(map);
 vm_map_modflags(map, 0, MAP_WIREFUTURE);
 vm_map_unlock(map);


 error = vm_map_unwire(map, vm_map_min(map), vm_map_max(map),
     VM_MAP_WIRE_USER|VM_MAP_WIRE_HOLESOK);
 return (error);
}
