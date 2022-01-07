
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmspace {int dummy; } ;
struct proc {struct vmspace* p_vmspace; } ;


 int KASSERT (int,char*) ;
 int PROC_VMSPACE_LOCK (struct proc*) ;
 int PROC_VMSPACE_UNLOCK (struct proc*) ;
 struct vmspace vmspace0 ;
 int vmspace_free (struct vmspace*) ;

void
vmspace_exitfree(struct proc *p)
{
 struct vmspace *vm;

 PROC_VMSPACE_LOCK(p);
 vm = p->p_vmspace;
 p->p_vmspace = ((void*)0);
 PROC_VMSPACE_UNLOCK(p);
 KASSERT(vm == &vmspace0, ("vmspace_exitfree: wrong vmspace"));
 vmspace_free(vm);
}
