
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct proc {TYPE_2__* p_ksi; struct proc* p_pptr; TYPE_1__* p_ucred; int p_pid; } ;
struct TYPE_5__ {int ksi_code; int ksi_status; int ksi_uid; int ksi_pid; int ksi_signo; } ;
struct TYPE_4__ {int cr_ruid; } ;


 scalar_t__ KSI_ONQ (TYPE_2__*) ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int SIGCHLD ;
 int pksignal (struct proc*,int ,TYPE_2__*) ;

__attribute__((used)) static void
sigparent(struct proc *p, int reason, int status)
{
 PROC_LOCK_ASSERT(p, MA_OWNED);
 PROC_LOCK_ASSERT(p->p_pptr, MA_OWNED);

 if (p->p_ksi != ((void*)0)) {
  p->p_ksi->ksi_signo = SIGCHLD;
  p->p_ksi->ksi_code = reason;
  p->p_ksi->ksi_status = status;
  p->p_ksi->ksi_pid = p->p_pid;
  p->p_ksi->ksi_uid = p->p_ucred->cr_ruid;
  if (KSI_ONQ(p->p_ksi))
   return;
 }
 pksignal(p->p_pptr, SIGCHLD, p->p_ksi);
}
