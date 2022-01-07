
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct ipq {int ipq_label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct mbuf*,struct label*,struct ipq*,int ) ;
 int ipq_create ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 scalar_t__ mac_policy_count ;

void
mac_ipq_create(struct mbuf *m, struct ipq *q)
{
 struct label *label;

 if (mac_policy_count == 0)
  return;

 label = mac_mbuf_to_label(m);

 MAC_POLICY_PERFORM_NOSLEEP(ipq_create, m, label, q, q->ipq_label);
}
