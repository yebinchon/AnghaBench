
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
struct vmspace {int vm_swrss; } ;
struct proc {struct vmspace* p_vmspace; } ;
struct TYPE_3__ {int td_pflags; struct proc* td_proc; } ;


 int ENOMEM ;
 int KASSERT (int,char*) ;
 int PROC_VMSPACE_LOCK (struct proc*) ;
 int PROC_VMSPACE_UNLOCK (struct proc*) ;
 int TDP_EXECVMSPC ;
 TYPE_1__* curthread ;
 int pmap_activate (TYPE_1__*) ;
 int pmap_pinit ;
 struct vmspace* vmspace_alloc (int ,int ,int ) ;

int
vmspace_exec(struct proc *p, vm_offset_t minuser, vm_offset_t maxuser)
{
 struct vmspace *oldvmspace = p->p_vmspace;
 struct vmspace *newvmspace;

 KASSERT((curthread->td_pflags & TDP_EXECVMSPC) == 0,
     ("vmspace_exec recursed"));
 newvmspace = vmspace_alloc(minuser, maxuser, pmap_pinit);
 if (newvmspace == ((void*)0))
  return (ENOMEM);
 newvmspace->vm_swrss = oldvmspace->vm_swrss;







 PROC_VMSPACE_LOCK(p);
 p->p_vmspace = newvmspace;
 PROC_VMSPACE_UNLOCK(p);
 if (p == curthread->td_proc)
  pmap_activate(curthread);
 curthread->td_pflags |= TDP_EXECVMSPC;
 return (0);
}
