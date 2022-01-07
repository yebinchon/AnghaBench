
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int IFNET_EVENT_DOWN ;
 int IFNET_EVENT_UP ;
 int hn_rxvf_change (void*,struct ifnet*,int) ;

__attribute__((used)) static void
hn_ifnet_event(void *arg, struct ifnet *ifp, int event)
{

 if (event != IFNET_EVENT_UP && event != IFNET_EVENT_DOWN)
  return;
 hn_rxvf_change(arg, ifp, event == IFNET_EVENT_UP);
}
