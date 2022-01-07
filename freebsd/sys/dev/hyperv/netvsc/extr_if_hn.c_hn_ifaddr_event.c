
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_flags; } ;


 int IFF_UP ;
 int hn_rxvf_change (void*,struct ifnet*,int) ;

__attribute__((used)) static void
hn_ifaddr_event(void *arg, struct ifnet *ifp)
{

 hn_rxvf_change(arg, ifp, ifp->if_flags & IFF_UP);
}
