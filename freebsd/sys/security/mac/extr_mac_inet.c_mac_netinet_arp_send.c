
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
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 scalar_t__ mac_policy_count ;
 int netinet_arp_send ;

void
mac_netinet_arp_send(struct ifnet *ifp, struct mbuf *m)
{
 struct label *mlabel;
 int locked;

 if (mac_policy_count == 0)
  return;

 mlabel = mac_mbuf_to_label(m);

 MAC_IFNET_LOCK(ifp, locked);
 MAC_POLICY_PERFORM_NOSLEEP(netinet_arp_send, ifp, ifp->if_label, m,
     mlabel);
 MAC_IFNET_UNLOCK(ifp, locked);
}
