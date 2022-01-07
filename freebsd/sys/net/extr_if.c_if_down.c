
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int AF_UNSPEC ;
 int EVENTHANDLER_INVOKE (int ,struct ifnet*,int ) ;
 int IFF_UP ;
 int IFNET_EVENT_DOWN ;
 int if_unroute (struct ifnet*,int ,int ) ;
 int ifnet_event ;

void
if_down(struct ifnet *ifp)
{

 EVENTHANDLER_INVOKE(ifnet_event, ifp, IFNET_EVENT_DOWN);
 if_unroute(ifp, IFF_UP, AF_UNSPEC);
}
