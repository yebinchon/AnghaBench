
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct mbuf*,struct label*) ;
 int M_ASSERTPKTHDR (struct mbuf*) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 scalar_t__ mac_policy_count ;
 int netinet_firewall_send ;

void
mac_netinet_firewall_send(struct mbuf *m)
{
 struct label *label;

 M_ASSERTPKTHDR(m);

 if (mac_policy_count == 0)
  return;

 label = mac_mbuf_to_label(m);

 MAC_POLICY_PERFORM_NOSLEEP(netinet_firewall_send, m, label);
}
