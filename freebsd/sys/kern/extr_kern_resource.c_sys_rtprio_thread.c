
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {scalar_t__ td_tid; struct proc* td_proc; } ;
struct rtprio_thread_args {int function; scalar_t__ lwpid; int rtp; } ;
struct rtprio {int type; } ;
struct proc {int dummy; } ;
struct TYPE_2__ {int p_pid; } ;


 int EINVAL ;
 int ESRCH ;
 int PRIV_SCHED_RTPRIO ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;

 int RTP_PRIO_BASE (int ) ;
 int RTP_PRIO_IDLE ;
 int RTP_PRIO_REALTIME ;

 int copyin (int ,struct rtprio*,int) ;
 int copyout (struct rtprio*,int ,int) ;
 TYPE_1__* curproc ;
 int p_cansched (struct thread*,struct proc*) ;
 int p_cansee (struct thread*,struct proc*) ;
 int pri_to_rtp (struct thread*,struct rtprio*) ;
 int priv_check (struct thread*,int ) ;
 int rtp_to_pri (struct rtprio*,struct thread*) ;
 struct thread* tdfind (scalar_t__,int ) ;
 int unprivileged_idprio ;

int
sys_rtprio_thread(struct thread *td, struct rtprio_thread_args *uap)
{
 struct proc *p;
 struct rtprio rtp;
 struct thread *td1;
 int cierror, error;


 if (uap->function == 128)
  cierror = copyin(uap->rtp, &rtp, sizeof(struct rtprio));
 else
  cierror = 0;

 if (uap->lwpid == 0 || uap->lwpid == td->td_tid) {
  p = td->td_proc;
  td1 = td;
  PROC_LOCK(p);
 } else {

  td1 = tdfind(uap->lwpid, curproc->p_pid);
  if (td1 == ((void*)0))
   return (ESRCH);
  p = td1->td_proc;
 }

 switch (uap->function) {
 case 129:
  if ((error = p_cansee(td, p)))
   break;
  pri_to_rtp(td1, &rtp);
  PROC_UNLOCK(p);
  return (copyout(&rtp, uap->rtp, sizeof(struct rtprio)));
 case 128:
  if ((error = p_cansched(td, p)) || (error = cierror))
   break;
  if (RTP_PRIO_BASE(rtp.type) == RTP_PRIO_REALTIME ||
      (RTP_PRIO_BASE(rtp.type) == RTP_PRIO_IDLE &&
      unprivileged_idprio == 0)) {
   error = priv_check(td, PRIV_SCHED_RTPRIO);
   if (error)
    break;
  }
  error = rtp_to_pri(&rtp, td1);
  break;
 default:
  error = EINVAL;
  break;
 }
 PROC_UNLOCK(p);
 return (error);
}
