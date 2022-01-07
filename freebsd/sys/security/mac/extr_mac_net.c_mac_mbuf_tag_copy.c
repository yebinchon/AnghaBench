
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_tag {int dummy; } ;
struct label {int dummy; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct label*,struct label*) ;
 int mbuf_copy_label ;

void
mac_mbuf_tag_copy(struct m_tag *src, struct m_tag *dest)
{
 struct label *src_label, *dest_label;

 src_label = (struct label *)(src+1);
 dest_label = (struct label *)(dest+1);





 MAC_POLICY_PERFORM_NOSLEEP(mbuf_copy_label, src_label, dest_label);
}
