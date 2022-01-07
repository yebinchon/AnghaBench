
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmspace {scalar_t__ vm_refcnt; } ;
struct TYPE_2__ {struct vmspace* p_vmspace; } ;


 int KASSERT (int,char*) ;
 int atomic_add_int (scalar_t__*,int) ;
 TYPE_1__* curproc ;
 int curthread ;
 int pmap_activate (int ) ;
 int vmspace_free (struct vmspace*) ;

void
vmspace_switch_aio(struct vmspace *newvm)
{
 struct vmspace *oldvm;



 KASSERT(newvm->vm_refcnt > 0,
     ("vmspace_switch_aio: newvm unreferenced"));

 oldvm = curproc->p_vmspace;
 if (oldvm == newvm)
  return;




 curproc->p_vmspace = newvm;
 atomic_add_int(&newvm->vm_refcnt, 1);


 pmap_activate(curthread);

 vmspace_free(oldvm);
}
