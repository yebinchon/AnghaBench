
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_label; } ;


 int MAC_IFNET_LOCK (struct ifnet*,int) ;
 int MAC_IFNET_UNLOCK (struct ifnet*,int) ;
 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ifnet*,int ) ;
 int ifnet_create ;
 scalar_t__ mac_policy_count ;

void
mac_ifnet_create(struct ifnet *ifp)
{
 int locked;

 if (mac_policy_count == 0)
  return;

 MAC_IFNET_LOCK(ifp, locked);
 MAC_POLICY_PERFORM_NOSLEEP(ifnet_create, ifp, ifp->if_label);
 MAC_IFNET_UNLOCK(ifp, locked);
}
