
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef TYPE_1__* vm_map_t ;
struct TYPE_13__ {int flags; scalar_t__ size; int pmap; } ;
struct vmspace {int vm_dsize; scalar_t__ vm_daddr; TYPE_1__ vm_map; } ;
struct thread {TYPE_8__* td_proc; } ;
typedef scalar_t__ rlim_t ;
struct TYPE_14__ {struct vmspace* p_vmspace; } ;


 int ENOMEM ;
 int KERN_SUCCESS ;
 int MAP_WIREFUTURE ;
 int PROC_LOCK (TYPE_8__*) ;
 int PROC_UNLOCK (TYPE_8__*) ;
 int RACCT_DATA ;
 int RACCT_MEMLOCK ;
 int RACCT_VMEM ;
 int RLIMIT_DATA ;
 int RLIMIT_MEMLOCK ;
 int RLIMIT_VMEM ;
 int SV_ILP32 ;
 scalar_t__ SV_PROC_FLAG (TYPE_8__*,int ) ;
 int VM_MAP_WIRE_NOHOLES ;
 int VM_MAP_WIRE_USER ;
 int VM_PROT_ALL ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_RW ;
 scalar_t__ btoc (scalar_t__) ;
 scalar_t__ ctob (int ) ;
 scalar_t__ i386_read_exec ;
 scalar_t__ lim_cur (struct thread*,int ) ;
 int old_mlock ;
 int pmap_wired_count (int ) ;
 scalar_t__ ptoa (int ) ;
 scalar_t__ racct_enable ;
 int racct_set (TYPE_8__*,int ,scalar_t__) ;
 int racct_set_force (TYPE_8__*,int ,scalar_t__) ;
 scalar_t__ round_page (scalar_t__) ;
 int vm_map_delete (TYPE_1__*,scalar_t__,scalar_t__) ;
 int vm_map_insert (TYPE_1__*,int *,int ,scalar_t__,scalar_t__,int,int ,int ) ;
 int vm_map_lock (TYPE_1__*) ;
 scalar_t__ vm_map_max (TYPE_1__*) ;
 int vm_map_unlock (TYPE_1__*) ;
 int vm_map_wire_locked (TYPE_1__*,scalar_t__,scalar_t__,int) ;

int
kern_break(struct thread *td, uintptr_t *addr)
{
 struct vmspace *vm = td->td_proc->p_vmspace;
 vm_map_t map = &vm->vm_map;
 vm_offset_t new, old, base;
 rlim_t datalim, lmemlim, vmemlim;
 int prot, rv;
 int error = 0;

 datalim = lim_cur(td, RLIMIT_DATA);
 lmemlim = lim_cur(td, RLIMIT_MEMLOCK);
 vmemlim = lim_cur(td, RLIMIT_VMEM);

 new = round_page(*addr);
 vm_map_lock(map);

 base = round_page((vm_offset_t) vm->vm_daddr);
 old = base + ctob(vm->vm_dsize);
 if (new > base) {




  if (new - base > datalim && new > old) {
   error = ENOMEM;
   goto done;
  }
  if (new > vm_map_max(map)) {
   error = ENOMEM;
   goto done;
  }
 } else if (new < base) {







  new = old;
  goto done;
 }

 if (new > old) {
  if (!old_mlock && map->flags & MAP_WIREFUTURE) {
   if (ptoa(pmap_wired_count(map->pmap)) +
       (new - old) > lmemlim) {
    error = ENOMEM;
    goto done;
   }
  }
  if (map->size + (new - old) > vmemlim) {
   error = ENOMEM;
   goto done;
  }
  prot = VM_PROT_RW;




  rv = vm_map_insert(map, ((void*)0), 0, old, new, prot, VM_PROT_ALL,
      0);
  if (rv == KERN_SUCCESS && (map->flags & MAP_WIREFUTURE) != 0) {
   rv = vm_map_wire_locked(map, old, new,
       VM_MAP_WIRE_USER | VM_MAP_WIRE_NOHOLES);
   if (rv != KERN_SUCCESS)
    vm_map_delete(map, old, new);
  }
  if (rv != KERN_SUCCESS) {
   error = ENOMEM;
   goto done;
  }
  vm->vm_dsize += btoc(new - old);
 } else if (new < old) {
  rv = vm_map_delete(map, new, old);
  if (rv != KERN_SUCCESS) {
   error = ENOMEM;
   goto done;
  }
  vm->vm_dsize -= btoc(old - new);
 }
done:
 vm_map_unlock(map);

 if (error == 0)
  *addr = new;

 return (error);
}
