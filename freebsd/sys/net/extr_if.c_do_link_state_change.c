
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_link_state; scalar_t__ if_type; int if_xname; scalar_t__ if_lagg; int (* if_bridge_linkstate ) (struct ifnet*) ;scalar_t__ if_bridge; scalar_t__ if_carp; int * if_l2com; int * if_vlantrunk; int if_vnet; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int EVENTHANDLER_INVOKE (int ,struct ifnet*,int) ;
 scalar_t__ IFT_ETHER ;
 scalar_t__ IFT_L2VLAN ;
 scalar_t__ IS_DEFAULT_VNET (int ) ;
 int LINK_STATE_UP ;
 int carp_linkstate_p (struct ifnet*) ;
 int curvnet ;
 int devctl_notify (char*,int ,char*,int *) ;
 int if_printf (struct ifnet*,char*,...) ;
 int ifnet_link_event ;
 int lagg_linkstate_p (struct ifnet*,int) ;
 scalar_t__ log_link_state_change ;
 int ng_ether_link_state_p (struct ifnet*,int) ;
 int rt_ifmsg (struct ifnet*) ;
 int stub1 (struct ifnet*) ;
 int stub2 (struct ifnet*,int) ;
 int stub3 (struct ifnet*) ;
 int stub4 (struct ifnet*) ;
 int stub5 (struct ifnet*,int) ;
 int vlan_link_state_p (struct ifnet*) ;

__attribute__((used)) static void
do_link_state_change(void *arg, int pending)
{
 struct ifnet *ifp;
 int link_state;

 ifp = arg;
 link_state = ifp->if_link_state;

 CURVNET_SET(ifp->if_vnet);
 rt_ifmsg(ifp);
 if (ifp->if_vlantrunk != ((void*)0))
  (*vlan_link_state_p)(ifp);

 if ((ifp->if_type == IFT_ETHER || ifp->if_type == IFT_L2VLAN) &&
     ifp->if_l2com != ((void*)0))
  (*ng_ether_link_state_p)(ifp, link_state);
 if (ifp->if_carp)
  (*carp_linkstate_p)(ifp);
 if (ifp->if_bridge)
  ifp->if_bridge_linkstate(ifp);
 if (ifp->if_lagg)
  (*lagg_linkstate_p)(ifp, link_state);

 if (IS_DEFAULT_VNET(curvnet))
  devctl_notify("IFNET", ifp->if_xname,
      (link_state == LINK_STATE_UP) ? "LINK_UP" : "LINK_DOWN",
      ((void*)0));
 if (pending > 1)
  if_printf(ifp, "%d link states coalesced\n", pending);
 if (log_link_state_change)
  if_printf(ifp, "link state changed to %s\n",
      (link_state == LINK_STATE_UP) ? "UP" : "DOWN" );
 EVENTHANDLER_INVOKE(ifnet_link_event, ifp, link_state);
 CURVNET_RESTORE();
}
