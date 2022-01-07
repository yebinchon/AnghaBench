
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct vmspace {TYPE_1__ vm_map; } ;
struct thread {int dummy; } ;
struct proc {int p_flag2; int p_flag; } ;


 int MAP_ASLR ;


 int PROC_ASLR_ACTIVE ;
 int PROC_ASLR_FORCE_DISABLE ;
 int PROC_ASLR_FORCE_ENABLE ;
 int PROC_ASLR_NOFORCE ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_WEXIT ;
 int _PHOLD (struct proc*) ;
 int _PRELE (struct proc*) ;
 struct vmspace* vmspace_acquire_ref (struct proc*) ;
 int vmspace_free (struct vmspace*) ;

__attribute__((used)) static int
aslr_status(struct thread *td, struct proc *p, int *data)
{
 struct vmspace *vm;
 int d;

 switch (p->p_flag2 & (128 | 129)) {
 case 0:
  d = PROC_ASLR_NOFORCE;
  break;
 case 128:
  d = PROC_ASLR_FORCE_ENABLE;
  break;
 case 129:
  d = PROC_ASLR_FORCE_DISABLE;
  break;
 }
 if ((p->p_flag & P_WEXIT) == 0) {
  _PHOLD(p);
  PROC_UNLOCK(p);
  vm = vmspace_acquire_ref(p);
  if (vm != ((void*)0) && (vm->vm_map.flags & MAP_ASLR) != 0) {
   d |= PROC_ASLR_ACTIVE;
   vmspace_free(vm);
  }
  PROC_LOCK(p);
  _PRELE(p);
 }
 *data = d;
 return (0);
}
