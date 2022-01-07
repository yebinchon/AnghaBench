
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct label*,struct label*) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 scalar_t__ mac_policy_count ;
 int mbuf_copy_label ;

void
mac_mbuf_copy(struct mbuf *m_from, struct mbuf *m_to)
{
 struct label *src_label, *dest_label;

 if (mac_policy_count == 0)
  return;

 src_label = mac_mbuf_to_label(m_from);
 dest_label = mac_mbuf_to_label(m_to);

 MAC_POLICY_PERFORM_NOSLEEP(mbuf_copy_label, src_label, dest_label);
}
