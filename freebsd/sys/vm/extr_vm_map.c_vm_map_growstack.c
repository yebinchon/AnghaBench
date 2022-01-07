
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_3__* vm_map_t ;
typedef TYPE_4__* vm_map_entry_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_25__ {int flags; scalar_t__ size; int pmap; int system_map; } ;
struct vmspace {int vm_ssize; scalar_t__ vm_maxsaddr; TYPE_3__ vm_map; } ;
struct ucred {int dummy; } ;
struct proc {int p_flag2; int p_fctl0; TYPE_2__* p_sysent; int * p_textvp; struct vmspace* p_vmspace; } ;
typedef scalar_t__ rlim_t ;
struct TYPE_27__ {struct ucred* cred; } ;
struct TYPE_23__ {TYPE_5__* vm_object; } ;
struct TYPE_26__ {int eflags; scalar_t__ start; scalar_t__ end; scalar_t__ next_read; int offset; TYPE_1__ object; struct ucred* cred; int max_protection; int protection; } ;
struct TYPE_24__ {scalar_t__ sv_usrstack; } ;


 int KASSERT (int,char*) ;
 int KERN_FAILURE ;
 int KERN_NO_SPACE ;
 int KERN_SUCCESS ;
 int MAP_CREATE_GUARD ;
 int MAP_CREATE_STACK_GAP_DN ;
 int MAP_ENTRY_GROWS_DOWN ;
 int MAP_ENTRY_GROWS_UP ;
 int MAP_ENTRY_GUARD ;
 int MAP_ENTRY_STACK_GAP_DN ;
 int MAP_ENTRY_STACK_GAP_UP ;
 int MAP_STACK_GROWS_DOWN ;
 int MAP_WIREFUTURE ;
 int MPASS (int) ;
 int NT_FREEBSD_FCTL_STKGAP_DISABLE ;
 int P2_STKGAP_DISABLE ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int RACCT_MEMLOCK ;
 int RACCT_STACK ;
 int RACCT_VMEM ;
 int RLIMIT_MEMLOCK ;
 int RLIMIT_STACK ;
 int RLIMIT_VMEM ;
 int VM_MAP_WIRE_NOHOLES ;
 int VM_MAP_WIRE_USER ;
 int VM_PROT_NONE ;
 scalar_t__ btoc (scalar_t__) ;
 scalar_t__ ctob (int ) ;
 struct proc* curproc ;
 int curthread ;
 struct proc* initproc ;
 scalar_t__ lim_cur (int ,int ) ;
 int old_mlock ;
 int pmap_wired_count (int ) ;
 scalar_t__ ptoa (int ) ;
 scalar_t__ racct_enable ;
 scalar_t__ racct_get_available (struct proc*,int ) ;
 int racct_set (struct proc*,int ,scalar_t__) ;
 scalar_t__ round_page (scalar_t__) ;
 scalar_t__ roundup (scalar_t__,int ) ;
 int sgrowsiz ;
 int swap_reserve_by_cred (scalar_t__,struct ucred*) ;
 scalar_t__ trunc_page (scalar_t__) ;
 int vm_map_entry_delete (TYPE_3__*,TYPE_4__*) ;
 TYPE_4__* vm_map_entry_pred (TYPE_4__*) ;
 int vm_map_entry_resize (TYPE_3__*,TYPE_4__*,scalar_t__) ;
 TYPE_4__* vm_map_entry_succ (TYPE_4__*) ;
 int vm_map_insert (TYPE_3__*,int *,int ,scalar_t__,scalar_t__,int ,int ,int) ;
 int vm_map_lock_downgrade (TYPE_3__*) ;
 int vm_map_lock_read (TYPE_3__*) ;
 scalar_t__ vm_map_lock_upgrade (TYPE_3__*) ;
 int vm_map_lookup_entry (TYPE_3__*,scalar_t__,TYPE_4__**) ;
 int vm_map_wire_locked (TYPE_3__*,scalar_t__,scalar_t__,int) ;
 scalar_t__ vm_object_coalesce (TYPE_5__*,int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int
vm_map_growstack(vm_map_t map, vm_offset_t addr, vm_map_entry_t gap_entry)
{
 vm_map_entry_t stack_entry;
 struct proc *p;
 struct vmspace *vm;
 struct ucred *cred;
 vm_offset_t gap_end, gap_start, grow_start;
 vm_size_t grow_amount, guard, max_grow;
 rlim_t lmemlim, stacklim, vmemlim;
 int rv, rv1;
 bool gap_deleted, grow_down, is_procstack;







 p = curproc;
 vm = p->p_vmspace;






 if (p != initproc && (map != &p->p_vmspace->vm_map ||
     p->p_textvp == ((void*)0)))
  return (KERN_FAILURE);

 MPASS(!map->system_map);

 lmemlim = lim_cur(curthread, RLIMIT_MEMLOCK);
 stacklim = lim_cur(curthread, RLIMIT_STACK);
 vmemlim = lim_cur(curthread, RLIMIT_VMEM);
retry:

 if (gap_entry == ((void*)0) && !vm_map_lookup_entry(map, addr, &gap_entry))
  return (KERN_FAILURE);
 if ((gap_entry->eflags & MAP_ENTRY_GUARD) == 0)
  return (KERN_SUCCESS);
 if ((gap_entry->eflags & MAP_ENTRY_STACK_GAP_DN) != 0) {
  stack_entry = vm_map_entry_succ(gap_entry);
  if ((stack_entry->eflags & MAP_ENTRY_GROWS_DOWN) == 0 ||
      stack_entry->start != gap_entry->end)
   return (KERN_FAILURE);
  grow_amount = round_page(stack_entry->start - addr);
  grow_down = 1;
 } else if ((gap_entry->eflags & MAP_ENTRY_STACK_GAP_UP) != 0) {
  stack_entry = vm_map_entry_pred(gap_entry);
  if ((stack_entry->eflags & MAP_ENTRY_GROWS_UP) == 0 ||
      stack_entry->end != gap_entry->start)
   return (KERN_FAILURE);
  grow_amount = round_page(addr + 1 - stack_entry->end);
  grow_down = 0;
 } else {
  return (KERN_FAILURE);
 }
 guard = ((curproc->p_flag2 & P2_STKGAP_DISABLE) != 0 ||
     (curproc->p_fctl0 & NT_FREEBSD_FCTL_STKGAP_DISABLE) != 0) ? 0 :
     gap_entry->next_read;
 max_grow = gap_entry->end - gap_entry->start;
 if (guard > max_grow)
  return (KERN_NO_SPACE);
 max_grow -= guard;
 if (grow_amount > max_grow)
  return (KERN_NO_SPACE);





 is_procstack = addr >= (vm_offset_t)vm->vm_maxsaddr &&
     addr < (vm_offset_t)p->p_sysent->sv_usrstack;
 if (is_procstack && (ctob(vm->vm_ssize) + grow_amount > stacklim))
  return (KERN_NO_SPACE);
 grow_amount = roundup(grow_amount, sgrowsiz);
 if (grow_amount > max_grow)
  grow_amount = max_grow;
 if (is_procstack && (ctob(vm->vm_ssize) + grow_amount > stacklim)) {
  grow_amount = trunc_page((vm_size_t)stacklim) -
      ctob(vm->vm_ssize);
 }
 if (!old_mlock && (map->flags & MAP_WIREFUTURE) != 0) {
  if (ptoa(pmap_wired_count(map->pmap)) + grow_amount > lmemlim) {
   rv = KERN_NO_SPACE;
   goto out;
  }
 }


 if (map->size + grow_amount > vmemlim) {
  rv = KERN_NO_SPACE;
  goto out;
 }
 if (vm_map_lock_upgrade(map)) {
  gap_entry = ((void*)0);
  vm_map_lock_read(map);
  goto retry;
 }

 if (grow_down) {
  grow_start = gap_entry->end - grow_amount;
  if (gap_entry->start + grow_amount == gap_entry->end) {
   gap_start = gap_entry->start;
   gap_end = gap_entry->end;
   vm_map_entry_delete(map, gap_entry);
   gap_deleted = 1;
  } else {
   MPASS(gap_entry->start < gap_entry->end - grow_amount);
   vm_map_entry_resize(map, gap_entry, -grow_amount);
   gap_deleted = 0;
  }
  rv = vm_map_insert(map, ((void*)0), 0, grow_start,
      grow_start + grow_amount,
      stack_entry->protection, stack_entry->max_protection,
      MAP_STACK_GROWS_DOWN);
  if (rv != KERN_SUCCESS) {
   if (gap_deleted) {
    rv1 = vm_map_insert(map, ((void*)0), 0, gap_start,
        gap_end, VM_PROT_NONE, VM_PROT_NONE,
        MAP_CREATE_GUARD | MAP_CREATE_STACK_GAP_DN);
    MPASS(rv1 == KERN_SUCCESS);
   } else
    vm_map_entry_resize(map, gap_entry,
        grow_amount);
  }
 } else {
  grow_start = stack_entry->end;
  cred = stack_entry->cred;
  if (cred == ((void*)0) && stack_entry->object.vm_object != ((void*)0))
   cred = stack_entry->object.vm_object->cred;
  if (cred != ((void*)0) && !swap_reserve_by_cred(grow_amount, cred))
   rv = KERN_NO_SPACE;

  else if (stack_entry->object.vm_object == ((void*)0) ||
      vm_object_coalesce(stack_entry->object.vm_object,
      stack_entry->offset,
      (vm_size_t)(stack_entry->end - stack_entry->start),
      grow_amount, cred != ((void*)0))) {
   if (gap_entry->start + grow_amount == gap_entry->end) {
    vm_map_entry_delete(map, gap_entry);
    vm_map_entry_resize(map, stack_entry,
        grow_amount);
   } else {
    gap_entry->start += grow_amount;
    stack_entry->end += grow_amount;
   }
   map->size += grow_amount;
   rv = KERN_SUCCESS;
  } else
   rv = KERN_FAILURE;
 }
 if (rv == KERN_SUCCESS && is_procstack)
  vm->vm_ssize += btoc(grow_amount);




 if (rv == KERN_SUCCESS && (map->flags & MAP_WIREFUTURE) != 0) {
  rv = vm_map_wire_locked(map, grow_start,
      grow_start + grow_amount,
      VM_MAP_WIRE_USER | VM_MAP_WIRE_NOHOLES);
 }
 vm_map_lock_downgrade(map);

out:
 return (rv);
}
