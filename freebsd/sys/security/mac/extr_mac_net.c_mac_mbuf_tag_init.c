
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_tag {int dummy; } ;
struct label {int dummy; } ;


 int MAC_POLICY_CHECK (int ,struct label*,int) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct label*,int) ;
 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct label*) ;
 int M_WAITOK ;
 int mac_destroy_label (struct label*) ;
 int mac_init_label (struct label*) ;
 int mbuf_destroy_label ;
 int mbuf_init_label ;

int
mac_mbuf_tag_init(struct m_tag *tag, int flag)
{
 struct label *label;
 int error;

 label = (struct label *) (tag + 1);
 mac_init_label(label);

 if (flag & M_WAITOK)
  MAC_POLICY_CHECK(mbuf_init_label, label, flag);
 else
  MAC_POLICY_CHECK_NOSLEEP(mbuf_init_label, label, flag);
 if (error) {
  MAC_POLICY_PERFORM_NOSLEEP(mbuf_destroy_label, label);
  mac_destroy_label(label);
 }
 return (error);
}
