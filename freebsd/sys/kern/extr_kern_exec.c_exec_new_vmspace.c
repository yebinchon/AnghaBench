
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int * vm_object_t ;
typedef TYPE_1__* vm_map_t ;
typedef scalar_t__ u_long ;
struct TYPE_11__ {int flags; } ;
struct vmspace {int vm_refcnt; int vm_ssize; char* vm_maxsaddr; TYPE_1__ vm_map; } ;
struct sysentvec {scalar_t__ sv_minuser; scalar_t__ sv_maxuser; scalar_t__* sv_maxssiz; scalar_t__ sv_usrstack; scalar_t__ sv_stackprot; int sv_shared_page_len; int sv_shared_page_base; int * sv_shared_page_obj; } ;
struct rlimit {scalar_t__ rlim_max; scalar_t__ rlim_cur; } ;
struct proc {struct vmspace* p_vmspace; } ;
struct image_params {int vmspace_destroyed; scalar_t__ stack_sz; scalar_t__ eff_stack_sz; scalar_t__ stack_prot; int map_flags; struct sysentvec* sysent; struct proc* proc; } ;


 int EVENTHANDLER_DIRECT_INVOKE (int ,struct proc*,struct image_params*) ;
 int KERN_SUCCESS ;
 int MAP_ACC_NO_CHARGE ;
 int MAP_ASLR ;
 int MAP_ASLR_IGNSTART ;
 int MAP_INHERIT_SHARE ;
 int MAP_STACK_GROWS_DOWN ;
 int MAP_WIREFUTURE ;
 scalar_t__ MAX (scalar_t__,int ) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int RLIMIT_STACK ;
 int VM_PROT_ALL ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 scalar_t__ cpu_exec_vmspace_reuse (struct proc*,TYPE_1__*) ;
 int curthread ;
 int kern_setrlimit (int ,int ,struct rlimit*) ;
 scalar_t__ lim_cur (int ,int ) ;
 int lim_rlimit_proc (struct proc*,int ,struct rlimit*) ;
 scalar_t__ map_at_zero ;
 scalar_t__ maxssiz ;
 int pmap_remove_pages (int ) ;
 int process_exec ;
 int sgrowsiz ;
 int shmexit (struct vmspace*) ;
 scalar_t__ trunc_page (scalar_t__) ;
 int vm_map_fixed (TYPE_1__*,int *,int ,int ,int ,int,int,int) ;
 int vm_map_lock (TYPE_1__*) ;
 scalar_t__ vm_map_max (TYPE_1__*) ;
 scalar_t__ vm_map_min (TYPE_1__*) ;
 int vm_map_modflags (TYPE_1__*,int ,int) ;
 int vm_map_remove (TYPE_1__*,scalar_t__,scalar_t__) ;
 int vm_map_stack (TYPE_1__*,scalar_t__,int ,scalar_t__,int ,int ) ;
 int vm_map_unlock (TYPE_1__*) ;
 int vm_mmap_to_errno (int) ;
 int vm_object_deallocate (int *) ;
 int vm_object_reference (int *) ;
 int vmspace_exec (struct proc*,scalar_t__,scalar_t__) ;
 int vmspace_pmap (struct vmspace*) ;

int
exec_new_vmspace(struct image_params *imgp, struct sysentvec *sv)
{
 int error;
 struct proc *p = imgp->proc;
 struct vmspace *vmspace = p->p_vmspace;
 vm_object_t obj;
 struct rlimit rlim_stack;
 vm_offset_t sv_minuser, stack_addr;
 vm_map_t map;
 u_long ssiz;

 imgp->vmspace_destroyed = 1;
 imgp->sysent = sv;


 EVENTHANDLER_DIRECT_INVOKE(process_exec, p, imgp);






 map = &vmspace->vm_map;
 if (map_at_zero)
  sv_minuser = sv->sv_minuser;
 else
  sv_minuser = MAX(sv->sv_minuser, PAGE_SIZE);
 if (vmspace->vm_refcnt == 1 && vm_map_min(map) == sv_minuser &&
     vm_map_max(map) == sv->sv_maxuser &&
     cpu_exec_vmspace_reuse(p, map)) {
  shmexit(vmspace);
  pmap_remove_pages(vmspace_pmap(vmspace));
  vm_map_remove(map, vm_map_min(map), vm_map_max(map));




  vm_map_lock(map);
  vm_map_modflags(map, 0, MAP_WIREFUTURE | MAP_ASLR |
      MAP_ASLR_IGNSTART);
  vm_map_unlock(map);
 } else {
  error = vmspace_exec(p, sv_minuser, sv->sv_maxuser);
  if (error)
   return (error);
  vmspace = p->p_vmspace;
  map = &vmspace->vm_map;
 }
 map->flags |= imgp->map_flags;


 obj = sv->sv_shared_page_obj;
 if (obj != ((void*)0)) {
  vm_object_reference(obj);
  error = vm_map_fixed(map, obj, 0,
      sv->sv_shared_page_base, sv->sv_shared_page_len,
      VM_PROT_READ | VM_PROT_EXECUTE,
      VM_PROT_READ | VM_PROT_EXECUTE,
      MAP_INHERIT_SHARE | MAP_ACC_NO_CHARGE);
  if (error != KERN_SUCCESS) {
   vm_object_deallocate(obj);
   return (vm_mmap_to_errno(error));
  }
 }


 if (imgp->stack_sz != 0) {
  ssiz = trunc_page(imgp->stack_sz);
  PROC_LOCK(p);
  lim_rlimit_proc(p, RLIMIT_STACK, &rlim_stack);
  PROC_UNLOCK(p);
  if (ssiz > rlim_stack.rlim_max)
   ssiz = rlim_stack.rlim_max;
  if (ssiz > rlim_stack.rlim_cur) {
   rlim_stack.rlim_cur = ssiz;
   kern_setrlimit(curthread, RLIMIT_STACK, &rlim_stack);
  }
 } else if (sv->sv_maxssiz != ((void*)0)) {
  ssiz = *sv->sv_maxssiz;
 } else {
  ssiz = maxssiz;
 }
 imgp->eff_stack_sz = lim_cur(curthread, RLIMIT_STACK);
 if (ssiz < imgp->eff_stack_sz)
  imgp->eff_stack_sz = ssiz;
 stack_addr = sv->sv_usrstack - ssiz;
 error = vm_map_stack(map, stack_addr, (vm_size_t)ssiz,
     obj != ((void*)0) && imgp->stack_prot != 0 ? imgp->stack_prot :
     sv->sv_stackprot, VM_PROT_ALL, MAP_STACK_GROWS_DOWN);
 if (error != KERN_SUCCESS)
  return (vm_mmap_to_errno(error));





 vmspace->vm_ssize = sgrowsiz >> PAGE_SHIFT;
 vmspace->vm_maxsaddr = (char *)stack_addr;

 return (0);
}
