
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int AF_UNSPEC ;
 int EVENTHANDLER_INVOKE (int ,struct ifnet*,int ) ;
 int IFF_UP ;
 int IFNET_EVENT_UP ;
 int if_route (struct ifnet*,int ,int ) ;
 int ifnet_event ;

void
if_up(struct ifnet *ifp)
{

 if_route(ifp, IFF_UP, AF_UNSPEC);
 EVENTHANDLER_INVOKE(ifnet_event, ifp, IFNET_EVENT_UP);
}
