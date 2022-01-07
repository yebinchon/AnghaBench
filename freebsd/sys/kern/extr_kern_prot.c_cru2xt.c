
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xucred {int cr_pid; } ;
struct thread {TYPE_1__* td_proc; int td_ucred; } ;
struct TYPE_2__ {int p_pid; } ;


 int cru2x (int ,struct xucred*) ;

void
cru2xt(struct thread *td, struct xucred *xcr)
{

 cru2x(td->td_ucred, xcr);
 xcr->cr_pid = td->td_proc->p_pid;
}
