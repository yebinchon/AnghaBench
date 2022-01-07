
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lip_state; } ;
struct lacp_port {int lp_state; TYPE_1__ lp_partner; int lp_selected; } ;


 int LACP_MUX_DETACHED ;
 int LACP_STATE_AGGREGATION ;
 int LACP_STATE_EXPIRED ;
 int LACP_UNSELECTED ;
 int lacp_set_mux (struct lacp_port*,int ) ;
 int lacp_sm_rx_record_default (struct lacp_port*) ;

__attribute__((used)) static void
lacp_port_disable(struct lacp_port *lp)
{
 lacp_set_mux(lp, LACP_MUX_DETACHED);

 lp->lp_state &= ~LACP_STATE_AGGREGATION;
 lp->lp_selected = LACP_UNSELECTED;
 lacp_sm_rx_record_default(lp);
 lp->lp_partner.lip_state &= ~LACP_STATE_AGGREGATION;
 lp->lp_state &= ~LACP_STATE_EXPIRED;
}
