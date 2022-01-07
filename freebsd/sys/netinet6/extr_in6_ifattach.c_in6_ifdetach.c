
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int _in6_ifdetach (struct ifnet*,int) ;

void
in6_ifdetach(struct ifnet *ifp)
{

 _in6_ifdetach(ifp, 1);
}
