
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmspace {int vm_refcnt; } ;
struct thread {struct proc* td_proc; } ;
struct proc {struct vmspace* p_vmspace; } ;


 int PROC_VMSPACE_LOCK (struct proc*) ;
 int PROC_VMSPACE_UNLOCK (struct proc*) ;
 int atomic_add_int (int*,int) ;
 int atomic_fcmpset_int (int*,int*,int) ;
 int pmap_activate (struct thread*) ;
 int pmap_remove_pages (int ) ;
 scalar_t__ racct_enable ;
 struct vmspace vmspace0 ;
 int vmspace_container_reset (struct proc*) ;
 int vmspace_dofree (struct vmspace*) ;
 int vmspace_pmap (struct vmspace*) ;

void
vmspace_exit(struct thread *td)
{
 int refcnt;
 struct vmspace *vm;
 struct proc *p;
 p = td->td_proc;
 vm = p->p_vmspace;
 atomic_add_int(&vmspace0.vm_refcnt, 1);
 refcnt = vm->vm_refcnt;
 do {
  if (refcnt > 1 && p->p_vmspace != &vmspace0) {

   PROC_VMSPACE_LOCK(p);
   p->p_vmspace = &vmspace0;
   PROC_VMSPACE_UNLOCK(p);
   pmap_activate(td);
  }
 } while (!atomic_fcmpset_int(&vm->vm_refcnt, &refcnt, refcnt - 1));
 if (refcnt == 1) {
  if (p->p_vmspace != vm) {

   PROC_VMSPACE_LOCK(p);
   p->p_vmspace = vm;
   PROC_VMSPACE_UNLOCK(p);
   pmap_activate(td);
  }
  pmap_remove_pages(vmspace_pmap(vm));

  PROC_VMSPACE_LOCK(p);
  p->p_vmspace = &vmspace0;
  PROC_VMSPACE_UNLOCK(p);
  pmap_activate(td);
  vmspace_dofree(vm);
 }




}
