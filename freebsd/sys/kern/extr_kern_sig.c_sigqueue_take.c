
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct proc {int p_pendingcnt; } ;
struct ksiginfo {int ksi_signo; } ;
struct TYPE_5__ {int sq_signals; int sq_ptrace; int sq_kill; int sq_list; struct proc* sq_proc; } ;
typedef TYPE_1__ sigqueue_t ;
struct TYPE_6__ {int ksi_flags; int ksi_signo; TYPE_1__* ksi_sigq; } ;
typedef TYPE_2__ ksiginfo_t ;


 int KSI_EXT ;
 int SIGDELSET (int ,int ) ;
 int SIGISMEMBER (int ,int ) ;
 struct ksiginfo* TAILQ_FIRST (int *) ;
 struct ksiginfo* TAILQ_NEXT (struct ksiginfo*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_2__*,int ) ;
 int ksi_link ;

void
sigqueue_take(ksiginfo_t *ksi)
{
 struct ksiginfo *kp;
 struct proc *p;
 sigqueue_t *sq;

 if (ksi == ((void*)0) || (sq = ksi->ksi_sigq) == ((void*)0))
  return;

 p = sq->sq_proc;
 TAILQ_REMOVE(&sq->sq_list, ksi, ksi_link);
 ksi->ksi_sigq = ((void*)0);
 if (!(ksi->ksi_flags & KSI_EXT) && p != ((void*)0))
  p->p_pendingcnt--;

 for (kp = TAILQ_FIRST(&sq->sq_list); kp != ((void*)0);
      kp = TAILQ_NEXT(kp, ksi_link)) {
  if (kp->ksi_signo == ksi->ksi_signo)
   break;
 }
 if (kp == ((void*)0) && !SIGISMEMBER(sq->sq_kill, ksi->ksi_signo) &&
     !SIGISMEMBER(sq->sq_ptrace, ksi->ksi_signo))
  SIGDELSET(sq->sq_signals, ksi->ksi_signo);
}
