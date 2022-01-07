
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct ip6q {int ip6q_label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ip6q*,int ,struct mbuf*,struct label*) ;
 int ip6q_reassemble ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 scalar_t__ mac_policy_count ;

void
mac_ip6q_reassemble(struct ip6q *q6, struct mbuf *m)
{
 struct label *label;

 if (mac_policy_count == 0)
  return;

 label = mac_mbuf_to_label(m);

 MAC_POLICY_PERFORM_NOSLEEP(ip6q_reassemble, q6, q6->ip6q_label, m,
     label);
}
