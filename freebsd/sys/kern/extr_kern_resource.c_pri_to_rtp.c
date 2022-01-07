
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_pri_class; scalar_t__ td_base_user_pri; } ;
struct rtprio {int type; scalar_t__ prio; } ;


 int PRI_BASE (int ) ;

 scalar_t__ PRI_MIN_IDLE ;
 scalar_t__ PRI_MIN_REALTIME ;
 scalar_t__ PRI_MIN_TIMESHARE ;


 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

void
pri_to_rtp(struct thread *td, struct rtprio *rtp)
{

 thread_lock(td);
 switch (PRI_BASE(td->td_pri_class)) {
 case 129:
  rtp->prio = td->td_base_user_pri - PRI_MIN_REALTIME;
  break;
 case 128:
  rtp->prio = td->td_base_user_pri - PRI_MIN_TIMESHARE;
  break;
 case 130:
  rtp->prio = td->td_base_user_pri - PRI_MIN_IDLE;
  break;
 default:
  break;
 }
 rtp->type = td->td_pri_class;
 thread_unlock(td);
}
