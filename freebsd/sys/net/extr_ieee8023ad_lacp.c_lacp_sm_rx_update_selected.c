
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lacpdu {int ldu_actor; } ;
struct lacp_port {int dummy; } ;


 int LACP_TRACE (struct lacp_port*) ;
 int lacp_sm_rx_update_selected_from_peerinfo (struct lacp_port*,int *) ;

__attribute__((used)) static void
lacp_sm_rx_update_selected(struct lacp_port *lp, const struct lacpdu *du)
{

 LACP_TRACE(lp);

 lacp_sm_rx_update_selected_from_peerinfo(lp, &du->ldu_actor);
}
