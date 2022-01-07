
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int if_label; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct ifnet*,struct mbuf*) ;
 int MAC_IFNET_LOCK (struct ifnet*,int) ;
 int MAC_IFNET_UNLOCK (struct ifnet*,int) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ifnet*,int ,struct mbuf*,struct label*) ;
 int M_ASSERTPKTHDR (struct mbuf*) ;
 int ifnet_check_transmit ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 scalar_t__ mac_policy_count ;

int
mac_ifnet_check_transmit(struct ifnet *ifp, struct mbuf *m)
{
 struct label *label;
 int error, locked;

 M_ASSERTPKTHDR(m);

 if (mac_policy_count == 0)
  return (0);

 label = mac_mbuf_to_label(m);

 MAC_IFNET_LOCK(ifp, locked);
 MAC_POLICY_CHECK_NOSLEEP(ifnet_check_transmit, ifp, ifp->if_label, m,
     label);
 MAC_CHECK_PROBE2(ifnet_check_transmit, error, ifp, m);
 MAC_IFNET_UNLOCK(ifp, locked);

 return (error);
}
