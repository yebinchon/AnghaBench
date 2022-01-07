
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int method; int timer; int owner; } ;
struct TYPE_5__ {TYPE_3__ lqm; } ;
struct TYPE_4__ {int name; } ;
struct physical {TYPE_2__ hdlc; TYPE_1__ link; } ;


 int LQM_ECHO ;
 int LQM_LQR ;
 int LogLQM ;
 int SendLqrReport (int ) ;
 int log_Printf (int ,char*,int ) ;
 int timer_Stop (int *) ;

void
lqr_Stop(struct physical *physical, int method)
{
  if (method == LQM_LQR)
    log_Printf(LogLQM, "%s: Stop sending LQR, Use LCP ECHO instead.\n",
               physical->link.name);
  if (method == LQM_ECHO)
    log_Printf(LogLQM, "%s: Stop sending LCP ECHO.\n",
               physical->link.name);
  physical->hdlc.lqm.method &= ~method;
  if (physical->hdlc.lqm.method)
    SendLqrReport(physical->hdlc.lqm.owner);
  else
    timer_Stop(&physical->hdlc.lqm.timer);
}
