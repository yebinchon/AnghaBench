
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int if_label; } ;


 int MAC_IFNET_LOCK (struct ifnet*,int) ;
 int MAC_IFNET_UNLOCK (struct ifnet*,int) ;
 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ifnet*,int ,struct mbuf*,struct label*) ;
 int ifnet_create_mbuf ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 scalar_t__ mac_policy_count ;

void
mac_ifnet_create_mbuf(struct ifnet *ifp, struct mbuf *m)
{
 struct label *label;
 int locked;

 if (mac_policy_count == 0)
  return;

 label = mac_mbuf_to_label(m);

 MAC_IFNET_LOCK(ifp, locked);
 MAC_POLICY_PERFORM_NOSLEEP(ifnet_create_mbuf, ifp, ifp->if_label, m,
     label);
 MAC_IFNET_UNLOCK(ifp, locked);
}
