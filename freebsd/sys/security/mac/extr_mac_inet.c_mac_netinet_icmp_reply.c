
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct mbuf*,struct label*,struct mbuf*,struct label*) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 scalar_t__ mac_policy_count ;
 int netinet_icmp_reply ;

void
mac_netinet_icmp_reply(struct mbuf *mrecv, struct mbuf *msend)
{
 struct label *mrecvlabel, *msendlabel;

 if (mac_policy_count == 0)
  return;

 mrecvlabel = mac_mbuf_to_label(mrecv);
 msendlabel = mac_mbuf_to_label(msend);

 MAC_POLICY_PERFORM_NOSLEEP(netinet_icmp_reply, mrecv, mrecvlabel,
     msend, msendlabel);
}
