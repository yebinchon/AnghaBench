
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lip_state; } ;
struct lacp_port {int lp_state; TYPE_1__ lp_partner; } ;


 int LACP_SHORT_TIMEOUT_TIME ;
 int LACP_STATE_EXPIRED ;
 int LACP_STATE_SYNC ;
 int LACP_STATE_TIMEOUT ;
 int LACP_TIMER_ARM (struct lacp_port*,int ,int ) ;
 int LACP_TIMER_CURRENT_WHILE ;

__attribute__((used)) static void
lacp_sm_rx_set_expired(struct lacp_port *lp)
{
 lp->lp_partner.lip_state &= ~LACP_STATE_SYNC;
 lp->lp_partner.lip_state |= LACP_STATE_TIMEOUT;
 LACP_TIMER_ARM(lp, LACP_TIMER_CURRENT_WHILE, LACP_SHORT_TIMEOUT_TIME);
 lp->lp_state |= LACP_STATE_EXPIRED;
}
