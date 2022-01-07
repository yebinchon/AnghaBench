
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct proc {scalar_t__ p_pendingcnt; } ;
struct ksiginfo {int ksi_flags; int ksi_signo; TYPE_1__* ksi_sigq; } ;
struct TYPE_3__ {int sq_flags; int sq_signals; int sq_kill; int sq_ptrace; int sq_list; struct proc* sq_proc; } ;
typedef TYPE_1__ sigqueue_t ;
typedef struct ksiginfo ksiginfo_t ;


 int EAGAIN ;
 int KASSERT (int,char*) ;
 int KSI_HEAD ;
 int KSI_INS ;
 int KSI_PTRACE ;
 int KSI_SIGQ ;
 int KSI_TRAP ;
 int SIGADDSET (int ,int) ;
 int SIGKILL ;
 int SIGSTOP ;
 int SQ_INIT ;
 int TAILQ_INSERT_HEAD (int *,struct ksiginfo*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct ksiginfo*,int ) ;
 scalar_t__ __predict_false (int ) ;
 int ksi_link ;
 struct ksiginfo* ksiginfo_alloc (int ) ;
 int ksiginfo_copy (struct ksiginfo*,struct ksiginfo*) ;
 int * ksiginfo_zone ;
 scalar_t__ max_pending_per_proc ;
 int signal_alloc_fail ;
 int signal_overflow ;

__attribute__((used)) static int
sigqueue_add(sigqueue_t *sq, int signo, ksiginfo_t *si)
{
 struct proc *p = sq->sq_proc;
 struct ksiginfo *ksi;
 int ret = 0;

 KASSERT(sq->sq_flags & SQ_INIT, ("sigqueue not inited"));





 if (signo == SIGKILL || signo == SIGSTOP || si == ((void*)0)) {
  SIGADDSET(sq->sq_kill, signo);
  goto out_set_bit;
 }


 if (si->ksi_flags & KSI_INS) {
  if (si->ksi_flags & KSI_HEAD)
   TAILQ_INSERT_HEAD(&sq->sq_list, si, ksi_link);
  else
   TAILQ_INSERT_TAIL(&sq->sq_list, si, ksi_link);
  si->ksi_sigq = sq;
  goto out_set_bit;
 }

 if (__predict_false(ksiginfo_zone == ((void*)0))) {
  SIGADDSET(sq->sq_kill, signo);
  goto out_set_bit;
 }

 if (p != ((void*)0) && p->p_pendingcnt >= max_pending_per_proc) {
  signal_overflow++;
  ret = EAGAIN;
 } else if ((ksi = ksiginfo_alloc(0)) == ((void*)0)) {
  signal_alloc_fail++;
  ret = EAGAIN;
 } else {
  if (p != ((void*)0))
   p->p_pendingcnt++;
  ksiginfo_copy(si, ksi);
  ksi->ksi_signo = signo;
  if (si->ksi_flags & KSI_HEAD)
   TAILQ_INSERT_HEAD(&sq->sq_list, ksi, ksi_link);
  else
   TAILQ_INSERT_TAIL(&sq->sq_list, ksi, ksi_link);
  ksi->ksi_sigq = sq;
 }

 if (ret != 0) {
  if ((si->ksi_flags & KSI_PTRACE) != 0) {
   SIGADDSET(sq->sq_ptrace, signo);
   ret = 0;
   goto out_set_bit;
  } else if ((si->ksi_flags & KSI_TRAP) != 0 ||
      (si->ksi_flags & KSI_SIGQ) == 0) {
   SIGADDSET(sq->sq_kill, signo);
   ret = 0;
   goto out_set_bit;
  }
  return (ret);
 }

out_set_bit:
 SIGADDSET(sq->sq_signals, signo);
 return (ret);
}
