
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
typedef scalar_t__ if_t ;


 int VLAN_CAPABILITIES (struct ifnet*) ;

void
if_vlancap(if_t ifh)
{
 struct ifnet *ifp = (struct ifnet *)ifh;
 VLAN_CAPABILITIES(ifp);
}
