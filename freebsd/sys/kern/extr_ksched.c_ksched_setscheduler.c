
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sched_param {scalar_t__ sched_priority; } ;
struct rtprio {int prio; int type; } ;
struct ksched {int dummy; } ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ P1B_PRIO_MAX ;
 scalar_t__ P1B_PRIO_MIN ;
 scalar_t__ PRI_MAX_TIMESHARE ;
 scalar_t__ PRI_MIN_TIMESHARE ;
 int RTP_PRIO_FIFO ;
 int RTP_PRIO_NORMAL ;
 int RTP_PRIO_REALTIME ;



 int p4prio_to_rtpprio (scalar_t__) ;
 int p4prio_to_tsprio (scalar_t__) ;
 int rtp_to_pri (struct rtprio*,struct thread*) ;

int
ksched_setscheduler(struct ksched *ksched, struct thread *td, int policy,
    const struct sched_param *param)
{
 struct rtprio rtp;
 int e;

 e = 0;
 switch(policy) {
 case 128:
 case 130:
  if (param->sched_priority >= P1B_PRIO_MIN &&
      param->sched_priority <= P1B_PRIO_MAX) {
   rtp.prio = p4prio_to_rtpprio(param->sched_priority);
   rtp.type = (policy == 130) ? RTP_PRIO_FIFO :
       RTP_PRIO_REALTIME;
   rtp_to_pri(&rtp, td);
  } else {
   e = EPERM;
  }
  break;
 case 129:
  if (param->sched_priority >= 0 && param->sched_priority <=
      (PRI_MAX_TIMESHARE - PRI_MIN_TIMESHARE)) {
   rtp.type = RTP_PRIO_NORMAL;
   rtp.prio = p4prio_to_tsprio(param->sched_priority);
   rtp_to_pri(&rtp, td);
  } else {
   e = EINVAL;
  }
  break;
 default:
  e = EINVAL;
  break;
 }
 return (e);
}
