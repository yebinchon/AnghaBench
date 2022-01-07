
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct rtprio {int type; } ;
struct ksched {int dummy; } ;




 int SCHED_FIFO ;
 int SCHED_OTHER ;
 int SCHED_RR ;
 int pri_to_rtp (struct thread*,struct rtprio*) ;

__attribute__((used)) static __inline int
getscheduler(struct ksched *ksched, struct thread *td, int *policy)
{
 struct rtprio rtp;
 int e;

 e = 0;
 pri_to_rtp(td, &rtp);
 switch (rtp.type) {
 case 129:
  *policy = SCHED_FIFO;
  break;
 case 128:
  *policy = SCHED_RR;
  break;
 default:
  *policy = SCHED_OTHER;
  break;
 }
 return (e);
}
