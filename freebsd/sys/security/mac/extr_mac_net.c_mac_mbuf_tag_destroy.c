
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_tag {int dummy; } ;
struct label {int dummy; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct label*) ;
 int mac_destroy_label (struct label*) ;
 int mbuf_destroy_label ;

void
mac_mbuf_tag_destroy(struct m_tag *tag)
{
 struct label *label;

 label = (struct label *)(tag+1);

 MAC_POLICY_PERFORM_NOSLEEP(mbuf_destroy_label, label);
 mac_destroy_label(label);
}
