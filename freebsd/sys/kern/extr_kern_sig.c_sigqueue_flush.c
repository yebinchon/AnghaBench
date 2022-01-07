
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct proc {int p_pendingcnt; } ;
struct TYPE_7__ {int sq_flags; int sq_ptrace; int sq_kill; int sq_signals; int sq_list; struct proc* sq_proc; } ;
typedef TYPE_1__ sigqueue_t ;
struct TYPE_8__ {int * ksi_sigq; } ;
typedef TYPE_2__ ksiginfo_t ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int SIGEMPTYSET (int ) ;
 int SQ_INIT ;
 TYPE_2__* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,TYPE_2__*,int ) ;
 int ksi_link ;
 scalar_t__ ksiginfo_tryfree (TYPE_2__*) ;

void
sigqueue_flush(sigqueue_t *sq)
{
 struct proc *p = sq->sq_proc;
 ksiginfo_t *ksi;

 KASSERT(sq->sq_flags & SQ_INIT, ("sigqueue not inited"));

 if (p != ((void*)0))
  PROC_LOCK_ASSERT(p, MA_OWNED);

 while ((ksi = TAILQ_FIRST(&sq->sq_list)) != ((void*)0)) {
  TAILQ_REMOVE(&sq->sq_list, ksi, ksi_link);
  ksi->ksi_sigq = ((void*)0);
  if (ksiginfo_tryfree(ksi) && p != ((void*)0))
   p->p_pendingcnt--;
 }

 SIGEMPTYSET(sq->sq_signals);
 SIGEMPTYSET(sq->sq_kill);
 SIGEMPTYSET(sq->sq_ptrace);
}
