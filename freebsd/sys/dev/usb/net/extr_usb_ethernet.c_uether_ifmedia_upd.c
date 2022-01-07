
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int ue_ifmedia_upd (struct ifnet*) ;

int
uether_ifmedia_upd(struct ifnet *ifp)
{

 return (ue_ifmedia_upd(ifp));
}
