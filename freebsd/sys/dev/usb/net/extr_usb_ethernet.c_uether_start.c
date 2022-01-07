
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int ue_start (struct ifnet*) ;

void
uether_start(struct ifnet *ifp)
{

 ue_start(ifp);
}
