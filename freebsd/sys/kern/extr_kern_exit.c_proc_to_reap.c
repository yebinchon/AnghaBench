
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uid_t ;
struct thread {int dummy; } ;
struct rusage {int ru_stime; int ru_utime; } ;
struct proc {scalar_t__ p_state; scalar_t__ p_sigparent; TYPE_4__* p_stats; struct rusage p_ru; TYPE_3__* p_ucred; int p_pid; void* p_xexit; int p_xsig; TYPE_1__* p_session; int p_pgid; int * p_procdesc; } ;
struct __wrusage {struct rusage wru_children; struct rusage wru_self; } ;
struct TYPE_12__ {int si_uid; int si_pid; void* si_status; int si_code; scalar_t__ si_signo; scalar_t__ si_errno; } ;
typedef TYPE_5__ siginfo_t ;
typedef int pid_t ;
typedef int idtype_t ;
typedef scalar_t__ id_t ;
typedef int gid_t ;
struct TYPE_11__ {struct rusage p_cru; } ;
struct TYPE_10__ {int cr_uid; TYPE_2__* cr_prison; int cr_gid; } ;
struct TYPE_9__ {int pr_id; } ;
struct TYPE_8__ {int s_sid; } ;


 int CLD_DUMPED ;
 int CLD_EXITED ;
 int CLD_KILLED ;
 int PROC_LOCK (struct proc*) ;
 int PROC_STATLOCK (struct proc*) ;
 int PROC_STATUNLOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ PRS_ZOMBIE ;







 int SA_XLOCKED ;
 scalar_t__ SIGCHLD ;
 scalar_t__ WCOREDUMP (int ) ;
 int WEXITED ;
 scalar_t__ WIFSIGNALED (int ) ;
 int WLINUXCLONE ;
 void* WTERMSIG (int ) ;
 int bzero (TYPE_5__*,int) ;
 int calccru (struct proc*,int *,int *) ;
 int calcru (struct proc*,int *,int *) ;
 scalar_t__ p_canwait (struct thread*,struct proc*) ;
 int proc_reap (struct thread*,struct proc*,int*,int) ;
 int proctree_lock ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
proc_to_reap(struct thread *td, struct proc *p, idtype_t idtype, id_t id,
    int *status, int options, struct __wrusage *wrusage, siginfo_t *siginfo,
    int check_only)
{
 struct rusage *rup;

 sx_assert(&proctree_lock, SA_XLOCKED);

 PROC_LOCK(p);

 switch (idtype) {
 case 134:
  if (p->p_procdesc != ((void*)0)) {
   PROC_UNLOCK(p);
   return (0);
  }
  break;
 case 130:
  if (p->p_pid != (pid_t)id) {
   PROC_UNLOCK(p);
   return (0);
  }
  break;
 case 131:
  if (p->p_pgid != (pid_t)id) {
   PROC_UNLOCK(p);
   return (0);
  }
  break;
 case 129:
  if (p->p_session->s_sid != (pid_t)id) {
   PROC_UNLOCK(p);
   return (0);
  }
  break;
 case 128:
  if (p->p_ucred->cr_uid != (uid_t)id) {
   PROC_UNLOCK(p);
   return (0);
  }
  break;
 case 133:
  if (p->p_ucred->cr_gid != (gid_t)id) {
   PROC_UNLOCK(p);
   return (0);
  }
  break;
 case 132:
  if (p->p_ucred->cr_prison->pr_id != (int)id) {
   PROC_UNLOCK(p);
   return (0);
  }
  break;





 default:
  PROC_UNLOCK(p);
  return (0);
 }

 if (p_canwait(td, p)) {
  PROC_UNLOCK(p);
  return (0);
 }

 if (((options & WEXITED) == 0) && (p->p_state == PRS_ZOMBIE)) {
  PROC_UNLOCK(p);
  return (0);
 }
 if ((p->p_sigparent != SIGCHLD) ^
     ((options & WLINUXCLONE) != 0)) {
  PROC_UNLOCK(p);
  return (0);
 }

 if (siginfo != ((void*)0)) {
  bzero(siginfo, sizeof(*siginfo));
  siginfo->si_errno = 0;







  siginfo->si_signo = SIGCHLD;





  if (WCOREDUMP(p->p_xsig)) {
   siginfo->si_code = CLD_DUMPED;
   siginfo->si_status = WTERMSIG(p->p_xsig);
  } else if (WIFSIGNALED(p->p_xsig)) {
   siginfo->si_code = CLD_KILLED;
   siginfo->si_status = WTERMSIG(p->p_xsig);
  } else {
   siginfo->si_code = CLD_EXITED;
   siginfo->si_status = p->p_xexit;
  }

  siginfo->si_pid = p->p_pid;
  siginfo->si_uid = p->p_ucred->cr_uid;







 }






 if (wrusage != ((void*)0)) {
  rup = &wrusage->wru_self;
  *rup = p->p_ru;
  PROC_STATLOCK(p);
  calcru(p, &rup->ru_utime, &rup->ru_stime);
  PROC_STATUNLOCK(p);

  rup = &wrusage->wru_children;
  *rup = p->p_stats->p_cru;
  calccru(p, &rup->ru_utime, &rup->ru_stime);
 }

 if (p->p_state == PRS_ZOMBIE && !check_only) {
  proc_reap(td, p, status, options);
  return (-1);
 }
 return (1);
}
