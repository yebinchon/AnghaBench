
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int lip_state; } ;
struct lacp_port {TYPE_1__ lp_partner; } ;


 int LACP_DPRINTF (struct lacp_port*) ;
 scalar_t__ LACP_STATE_EQ (int ,int,int) ;
 int LACP_STATE_TIMEOUT ;
 int LACP_TIMER_DISARM (struct lacp_port*,int ) ;
 int LACP_TIMER_PERIODIC ;
 int lacp_sm_assert_ntt (struct lacp_port*) ;

__attribute__((used)) static void
lacp_sm_ptx_update_timeout(struct lacp_port *lp, uint8_t oldpstate)
{
 if (LACP_STATE_EQ(oldpstate, lp->lp_partner.lip_state,
     LACP_STATE_TIMEOUT)) {
  return;
 }

 LACP_DPRINTF((lp, "partner timeout changed\n"));
 LACP_TIMER_DISARM(lp, LACP_TIMER_PERIODIC);





 if ((lp->lp_partner.lip_state & LACP_STATE_TIMEOUT)) {
  lacp_sm_assert_ntt(lp);
 }
}
