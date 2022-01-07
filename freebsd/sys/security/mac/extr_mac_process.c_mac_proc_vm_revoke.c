
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct thread {TYPE_2__* td_proc; } ;
struct TYPE_5__ {TYPE_1__* p_vmspace; int p_ucred; } ;
struct TYPE_4__ {int vm_map; } ;


 int PROC_LOCK (TYPE_2__*) ;
 int PROC_UNLOCK (TYPE_2__*) ;
 int crfree (struct ucred*) ;
 struct ucred* crhold (int ) ;
 int mac_proc_vm_revoke_recurse (struct thread*,struct ucred*,int *) ;

void
mac_proc_vm_revoke(struct thread *td)
{
 struct ucred *cred;

 PROC_LOCK(td->td_proc);
 cred = crhold(td->td_proc->p_ucred);
 PROC_UNLOCK(td->td_proc);


 mac_proc_vm_revoke_recurse(td, cred,
     &td->td_proc->p_vmspace->vm_map);


 crfree(cred);
}
