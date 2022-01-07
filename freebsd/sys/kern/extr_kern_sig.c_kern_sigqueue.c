
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union sigval {int dummy; } sigval ;
typedef scalar_t__ u_int ;
struct thread {TYPE_2__* td_ucred; TYPE_1__* td_proc; } ;
struct proc {int dummy; } ;
typedef scalar_t__ pid_t ;
struct TYPE_8__ {int ksi_signo; union sigval ksi_value; int ksi_uid; int ksi_pid; int ksi_code; int ksi_flags; } ;
typedef TYPE_3__ ksiginfo_t ;
struct TYPE_7__ {int cr_ruid; } ;
struct TYPE_6__ {int p_pid; } ;


 int EINVAL ;
 int ESRCH ;
 int KSI_SIGQ ;
 int PROC_UNLOCK (struct proc*) ;
 int SI_QUEUE ;
 scalar_t__ _SIG_MAXSIG ;
 int ksiginfo_init (TYPE_3__*) ;
 int p_cansignal (struct thread*,struct proc*,int) ;
 struct proc* pfind_any (scalar_t__) ;
 int pksignal (struct proc*,int,TYPE_3__*) ;

int
kern_sigqueue(struct thread *td, pid_t pid, int signum, union sigval *value)
{
 ksiginfo_t ksi;
 struct proc *p;
 int error;

 if ((u_int)signum > _SIG_MAXSIG)
  return (EINVAL);





 if (pid <= 0)
  return (EINVAL);

 if ((p = pfind_any(pid)) == ((void*)0))
  return (ESRCH);
 error = p_cansignal(td, p, signum);
 if (error == 0 && signum != 0) {
  ksiginfo_init(&ksi);
  ksi.ksi_flags = KSI_SIGQ;
  ksi.ksi_signo = signum;
  ksi.ksi_code = SI_QUEUE;
  ksi.ksi_pid = td->td_proc->p_pid;
  ksi.ksi_uid = td->td_ucred->cr_ruid;
  ksi.ksi_value = *value;
  error = pksignal(p, ksi.ksi_signo, &ksi);
 }
 PROC_UNLOCK(p);
 return (error);
}
