
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ load; } ;
struct TYPE_7__ {TYPE_2__ timer; } ;
struct TYPE_8__ {TYPE_3__ lqm; } ;
struct physical {TYPE_4__ hdlc; } ;
struct TYPE_5__ {int link; } ;
struct lcp {TYPE_1__ fsm; } ;


 int SendLqrReport (struct lcp*) ;
 struct physical* link2physical (int ) ;
 int lqr_Setup (struct lcp*) ;

void
lqr_Start(struct lcp *lcp)
{
  struct physical *p = link2physical(lcp->fsm.link);

  lqr_Setup(lcp);
  if (p->hdlc.lqm.timer.load)
    SendLqrReport(lcp);
}
