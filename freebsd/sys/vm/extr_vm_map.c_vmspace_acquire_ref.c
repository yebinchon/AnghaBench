
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmspace {int vm_refcnt; } ;
struct proc {struct vmspace* p_vmspace; } ;


 int PROC_VMSPACE_LOCK (struct proc*) ;
 int PROC_VMSPACE_UNLOCK (struct proc*) ;
 int atomic_fcmpset_int (int*,int*,int) ;
 int vmspace_free (struct vmspace*) ;

struct vmspace *
vmspace_acquire_ref(struct proc *p)
{
 struct vmspace *vm;
 int refcnt;

 PROC_VMSPACE_LOCK(p);
 vm = p->p_vmspace;
 if (vm == ((void*)0)) {
  PROC_VMSPACE_UNLOCK(p);
  return (((void*)0));
 }
 refcnt = vm->vm_refcnt;
 do {
  if (refcnt <= 0) {
   PROC_VMSPACE_UNLOCK(p);
   return (((void*)0));
  }
 } while (!atomic_fcmpset_int(&vm->vm_refcnt, &refcnt, refcnt + 1));
 if (vm != p->p_vmspace) {
  PROC_VMSPACE_UNLOCK(p);
  vmspace_free(vm);
  return (((void*)0));
 }
 PROC_VMSPACE_UNLOCK(p);
 return (vm);
}
