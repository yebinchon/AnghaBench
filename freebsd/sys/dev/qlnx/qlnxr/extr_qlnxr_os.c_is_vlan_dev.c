
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {scalar_t__ if_type; } ;


 scalar_t__ IFT_L2VLAN ;

__attribute__((used)) static inline int
is_vlan_dev(struct ifnet *ifp)
{
 return (ifp->if_type == IFT_L2VLAN);
}
