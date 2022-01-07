
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_amcount; } ;


 int IFF_ALLMULTI ;
 int if_setflag (struct ifnet*,int ,int ,int *,int) ;

int
if_allmulti(struct ifnet *ifp, int onswitch)
{

 return (if_setflag(ifp, IFF_ALLMULTI, 0, &ifp->if_amcount, onswitch));
}
