
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ifnet {int dummy; } ;
struct TYPE_4__ {scalar_t__ full_duplex; int speed; scalar_t__ link_up; } ;
struct TYPE_5__ {TYPE_1__ s; int u64; } ;
typedef TYPE_2__ cvmx_helper_link_info_t ;
struct TYPE_6__ {scalar_t__ need_link_update; int queue; int port; int link_info; struct ifnet* ifp; } ;
typedef TYPE_3__ cvm_oct_private_t ;


 int DEBUGPRINT (char*,int ,...) ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int if_link_state_change (struct ifnet*,int ) ;
 int if_name (struct ifnet*) ;

__attribute__((used)) static void cvm_oct_update_link(void *context, int pending)
{
 cvm_oct_private_t *priv = (cvm_oct_private_t *)context;
 struct ifnet *ifp = priv->ifp;
 cvmx_helper_link_info_t link_info;

 link_info.u64 = priv->link_info;

 if (link_info.s.link_up) {
  if_link_state_change(ifp, LINK_STATE_UP);
  DEBUGPRINT("%s: %u Mbps %s duplex, port %2d, queue %2d\n",
      if_name(ifp), link_info.s.speed,
      (link_info.s.full_duplex) ? "Full" : "Half",
      priv->port, priv->queue);
 } else {
  if_link_state_change(ifp, LINK_STATE_DOWN);
  DEBUGPRINT("%s: Link down\n", if_name(ifp));
 }
 priv->need_link_update = 0;
}
