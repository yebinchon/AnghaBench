
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;
struct rtprio {scalar_t__ prio; int type; } ;


 int EPERM ;
 int RTP_PRIO_IDLE ;
 int RTP_SET ;
 int expect (char*,int,int,int ) ;
 int rtprio (int ,int ,struct rtprio*) ;

void
priv_sched_rtprio_curproc_idle(int asroot, int injail, struct test *test)
{
 struct rtprio rtp;
 int error;

 rtp.type = RTP_PRIO_IDLE;
 rtp.prio = 0;
 error = rtprio(RTP_SET, 0, &rtp);
 if (asroot && injail)
  expect("priv_sched_rtprio_curproc_idle(asroot, injail)",
      error, -1, EPERM);
 if (asroot && !injail)
  expect("priv_sched_rtprio_curproc_idle(asroot, !injail)",
      error, 0, 0);
 if (!asroot && injail)
  expect("priv_sched_rtprio_curproc_idle(!asroot, injail)",
      error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_sched_rtprio_curproc_idle(!asroot, !injail)",
      error, -1, EPERM);
}
