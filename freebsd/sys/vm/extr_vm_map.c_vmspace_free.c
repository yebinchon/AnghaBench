
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmspace {scalar_t__ vm_refcnt; } ;


 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*) ;
 int atomic_fetchadd_int (scalar_t__*,int) ;
 int panic (char*) ;
 int vmspace_dofree (struct vmspace*) ;

void
vmspace_free(struct vmspace *vm)
{

 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0),
     "vmspace_free() called");

 if (vm->vm_refcnt == 0)
  panic("vmspace_free: attempt to free already freed vmspace");

 if (atomic_fetchadd_int(&vm->vm_refcnt, -1) == 1)
  vmspace_dofree(vm);
}
