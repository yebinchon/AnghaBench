
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int if_label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ifnet*,int ,struct mbuf*,struct label*) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 scalar_t__ mac_policy_count ;
 int netinet6_nd6_send ;

void
mac_netinet6_nd6_send(struct ifnet *ifp, struct mbuf *m)
{
 struct label *mlabel;

 if (mac_policy_count == 0)
  return;

 mlabel = mac_mbuf_to_label(m);

 MAC_POLICY_PERFORM_NOSLEEP(netinet6_nd6_send, ifp, ifp->if_label, m,
     mlabel);
}
