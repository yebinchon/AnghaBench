
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lip_state; } ;
struct lacp_port {int lp_state; TYPE_1__ lp_partner; } ;


 int LACP_FAST_PERIODIC_TIME ;
 int LACP_SLOW_PERIODIC_TIME ;
 int LACP_STATE_ACTIVITY ;
 int LACP_STATE_TIMEOUT ;
 int LACP_TIMER_ARM (struct lacp_port*,int ,int) ;
 int LACP_TIMER_DISARM (struct lacp_port*,int ) ;
 scalar_t__ LACP_TIMER_ISARMED (struct lacp_port*,int ) ;
 int LACP_TIMER_PERIODIC ;

__attribute__((used)) static void
lacp_sm_ptx_tx_schedule(struct lacp_port *lp)
{
 int timeout;

 if (!(lp->lp_state & LACP_STATE_ACTIVITY) &&
     !(lp->lp_partner.lip_state & LACP_STATE_ACTIVITY)) {





  LACP_TIMER_DISARM(lp, LACP_TIMER_PERIODIC);
  return;
 }

 if (LACP_TIMER_ISARMED(lp, LACP_TIMER_PERIODIC)) {
  return;
 }

 timeout = (lp->lp_partner.lip_state & LACP_STATE_TIMEOUT) ?
     LACP_FAST_PERIODIC_TIME : LACP_SLOW_PERIODIC_TIME;

 LACP_TIMER_ARM(lp, LACP_TIMER_PERIODIC, timeout);
}
