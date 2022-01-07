
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_2__* vm_map_t ;
struct thread {TYPE_9__* td_proc; } ;
struct mlockall_args {int how; } ;
struct TYPE_14__ {TYPE_1__* p_vmspace; } ;
struct TYPE_13__ {scalar_t__ size; int pmap; } ;
struct TYPE_12__ {TYPE_2__ vm_map; } ;


 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int MAP_WIREFUTURE ;
 int MCL_CURRENT ;
 int MCL_FUTURE ;
 int PRIV_VM_MLOCK ;
 int PROC_LOCK (TYPE_9__*) ;
 int PROC_UNLOCK (TYPE_9__*) ;
 int RACCT_MEMLOCK ;
 int RLIMIT_MEMLOCK ;
 int VM_MAP_WIRE_HOLESOK ;
 int VM_MAP_WIRE_USER ;
 scalar_t__ lim_cur (struct thread*,int ) ;
 int old_mlock ;
 int pmap_wired_count (int ) ;
 int priv_check (struct thread*,int ) ;
 scalar_t__ ptoa (int ) ;
 scalar_t__ racct_enable ;
 int racct_set (TYPE_9__*,int ,scalar_t__) ;
 int vm_map_lock (TYPE_2__*) ;
 int vm_map_max (TYPE_2__*) ;
 int vm_map_min (TYPE_2__*) ;
 int vm_map_modflags (TYPE_2__*,int ,int ) ;
 int vm_map_unlock (TYPE_2__*) ;
 int vm_map_wire (TYPE_2__*,int ,int ,int) ;

int
sys_mlockall(struct thread *td, struct mlockall_args *uap)
{
 vm_map_t map;
 int error;

 map = &td->td_proc->p_vmspace->vm_map;
 error = priv_check(td, PRIV_VM_MLOCK);
 if (error)
  return (error);

 if ((uap->how == 0) || ((uap->how & ~(MCL_CURRENT|MCL_FUTURE)) != 0))
  return (EINVAL);





 if (!old_mlock && uap->how & MCL_CURRENT) {
  if (map->size > lim_cur(td, RLIMIT_MEMLOCK))
   return (ENOMEM);
 }
 if (uap->how & MCL_FUTURE) {
  vm_map_lock(map);
  vm_map_modflags(map, MAP_WIREFUTURE, 0);
  vm_map_unlock(map);
  error = 0;
 }

 if (uap->how & MCL_CURRENT) {






  error = vm_map_wire(map, vm_map_min(map), vm_map_max(map),
      VM_MAP_WIRE_USER|VM_MAP_WIRE_HOLESOK);
  if (error == KERN_SUCCESS)
   error = 0;
  else if (error == KERN_RESOURCE_SHORTAGE)
   error = ENOMEM;
  else
   error = EAGAIN;
 }
 return (error);
}
