
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct mbuf*,struct label*,struct mbuf*,struct label*) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 scalar_t__ mac_policy_count ;
 int netinet_fragment ;

void
mac_netinet_fragment(struct mbuf *m, struct mbuf *frag)
{
 struct label *mlabel, *fraglabel;

 if (mac_policy_count == 0)
  return;

 mlabel = mac_mbuf_to_label(m);
 fraglabel = mac_mbuf_to_label(frag);

 MAC_POLICY_PERFORM_NOSLEEP(netinet_fragment, m, mlabel, frag,
     fraglabel);
}
