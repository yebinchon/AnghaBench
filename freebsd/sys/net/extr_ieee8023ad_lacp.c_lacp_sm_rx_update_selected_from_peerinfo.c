
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lip_state; } ;
struct lacp_port {int lp_selected; TYPE_1__ lp_partner; } ;
struct lacp_peerinfo {int lip_state; } ;


 int LACP_STATE_AGGREGATION ;
 int LACP_STATE_EQ (int ,int ,int ) ;
 int LACP_TRACE (struct lacp_port*) ;
 int LACP_UNSELECTED ;
 scalar_t__ lacp_compare_peerinfo (TYPE_1__*,struct lacp_peerinfo const*) ;

__attribute__((used)) static void
lacp_sm_rx_update_selected_from_peerinfo(struct lacp_port *lp,
    const struct lacp_peerinfo *info)
{

 LACP_TRACE(lp);

 if (lacp_compare_peerinfo(&lp->lp_partner, info) ||
     !LACP_STATE_EQ(lp->lp_partner.lip_state, info->lip_state,
     LACP_STATE_AGGREGATION)) {
  lp->lp_selected = LACP_UNSELECTED;

 }
}
