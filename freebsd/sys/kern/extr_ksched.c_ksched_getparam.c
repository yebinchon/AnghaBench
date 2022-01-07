
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sched_param {scalar_t__ sched_priority; } ;
struct rtprio {scalar_t__ prio; int type; } ;
struct ksched {int dummy; } ;


 scalar_t__ PRI_MAX_TIMESHARE ;
 scalar_t__ PRI_MIN_TIMESHARE ;
 scalar_t__ RTP_PRIO_IS_REALTIME (int ) ;
 int pri_to_rtp (struct thread*,struct rtprio*) ;
 scalar_t__ rtpprio_to_p4prio (scalar_t__) ;
 scalar_t__ tsprio_to_p4prio (scalar_t__) ;

int
ksched_getparam(struct ksched *ksched, struct thread *td,
    struct sched_param *param)
{
 struct rtprio rtp;

 pri_to_rtp(td, &rtp);
 if (RTP_PRIO_IS_REALTIME(rtp.type))
  param->sched_priority = rtpprio_to_p4prio(rtp.prio);
 else {
  if (PRI_MIN_TIMESHARE < rtp.prio)




   param->sched_priority = PRI_MAX_TIMESHARE -
       PRI_MIN_TIMESHARE;
  else
   param->sched_priority = tsprio_to_p4prio(rtp.prio);
 }
 return (0);
}
