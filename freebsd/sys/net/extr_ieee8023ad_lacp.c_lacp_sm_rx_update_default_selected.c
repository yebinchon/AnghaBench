
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lacp_port {TYPE_1__* lp_lsc; } ;
struct TYPE_2__ {scalar_t__ lsc_strict_mode; } ;


 int LACP_TRACE (struct lacp_port*) ;
 int lacp_partner_admin_optimistic ;
 int lacp_partner_admin_strict ;
 int lacp_sm_rx_update_selected_from_peerinfo (struct lacp_port*,int *) ;

__attribute__((used)) static void
lacp_sm_rx_update_default_selected(struct lacp_port *lp)
{

 LACP_TRACE(lp);

 if (lp->lp_lsc->lsc_strict_mode)
  lacp_sm_rx_update_selected_from_peerinfo(lp,
      &lacp_partner_admin_strict);
 else
  lacp_sm_rx_update_selected_from_peerinfo(lp,
      &lacp_partner_admin_optimistic);
}
