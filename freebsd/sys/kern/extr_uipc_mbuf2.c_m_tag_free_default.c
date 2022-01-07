
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_tag {scalar_t__ m_tag_id; } ;


 int M_PACKET_TAGS ;
 scalar_t__ PACKET_TAG_MACLABEL ;
 int free (struct m_tag*,int ) ;
 int mac_mbuf_tag_destroy (struct m_tag*) ;

void
m_tag_free_default(struct m_tag *t)
{




 free(t, M_PACKET_TAGS);
}
