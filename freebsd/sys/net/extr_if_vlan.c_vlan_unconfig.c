
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int VLAN_XLOCK () ;
 int VLAN_XUNLOCK () ;
 int vlan_unconfig_locked (struct ifnet*,int ) ;

__attribute__((used)) static void
vlan_unconfig(struct ifnet *ifp)
{

 VLAN_XLOCK();
 vlan_unconfig_locked(ifp, 0);
 VLAN_XUNLOCK();
}
