
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct thread {scalar_t__ td_pri_class; scalar_t__ td_user_pri; } ;
struct rtprio {scalar_t__ prio; int type; } ;


 int EINVAL ;
 scalar_t__ PRI_MAX_TIMESHARE ;
 scalar_t__ PRI_MIN_IDLE ;
 scalar_t__ PRI_MIN_REALTIME ;
 scalar_t__ PRI_MIN_TIMESHARE ;
 int RTP_PRIO_BASE (int ) ;

 scalar_t__ RTP_PRIO_MAX ;


 scalar_t__ TD_ON_UPILOCK (struct thread*) ;
 int critical_enter () ;
 int critical_exit () ;
 int sched_class (struct thread*,int ) ;
 int sched_prio (struct thread*,scalar_t__) ;
 int sched_user_prio (struct thread*,scalar_t__) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;
 int umtx_pi_adjust (struct thread*,scalar_t__) ;

int
rtp_to_pri(struct rtprio *rtp, struct thread *td)
{
 u_char newpri, oldclass, oldpri;

 switch (RTP_PRIO_BASE(rtp->type)) {
 case 128:
  if (rtp->prio > RTP_PRIO_MAX)
   return (EINVAL);
  newpri = PRI_MIN_REALTIME + rtp->prio;
  break;
 case 129:
  if (rtp->prio > (PRI_MAX_TIMESHARE - PRI_MIN_TIMESHARE))
   return (EINVAL);
  newpri = PRI_MIN_TIMESHARE + rtp->prio;
  break;
 case 130:
  if (rtp->prio > RTP_PRIO_MAX)
   return (EINVAL);
  newpri = PRI_MIN_IDLE + rtp->prio;
  break;
 default:
  return (EINVAL);
 }

 thread_lock(td);
 oldclass = td->td_pri_class;
 sched_class(td, rtp->type);
 oldpri = td->td_user_pri;
 sched_user_prio(td, newpri);
 if (td->td_user_pri != oldpri && (oldclass != 129 ||
     td->td_pri_class != 129))
  sched_prio(td, td->td_user_pri);
 if (TD_ON_UPILOCK(td) && oldpri != newpri) {
  critical_enter();
  thread_unlock(td);
  umtx_pi_adjust(td, oldpri);
  critical_exit();
 } else
  thread_unlock(td);
 return (0);
}
