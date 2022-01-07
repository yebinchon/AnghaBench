
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct proc {TYPE_2__* p_ucred; int p_comm; int p_pid; } ;
struct TYPE_4__ {int cr_uid; TYPE_1__* cr_prison; } ;
struct TYPE_3__ {int pr_id; } ;


 int CTR3 (int ,char*,struct proc*,int ,int ) ;
 int KTR_PROC ;
 int LOG_ERR ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int SIGKILL ;
 int kern_psignal (struct proc*,int ) ;
 int log (int ,char*,int ,int ,int ,int ,char*) ;
 int proc_wkilled (struct proc*) ;

void
killproc(struct proc *p, char *why)
{

 PROC_LOCK_ASSERT(p, MA_OWNED);
 CTR3(KTR_PROC, "killproc: proc %p (pid %d, %s)", p, p->p_pid,
     p->p_comm);
 log(LOG_ERR, "pid %d (%s), jid %d, uid %d, was killed: %s\n",
     p->p_pid, p->p_comm, p->p_ucred->cr_prison->pr_id,
     p->p_ucred->cr_uid, why);
 proc_wkilled(p);
 kern_psignal(p, SIGKILL);
}
