
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct label {int dummy; } ;


 int PACKET_TAG_MACLABEL ;
 struct m_tag* m_tag_find (struct mbuf*,int ,int *) ;

struct label *
mac_mbuf_to_label(struct mbuf *m)
{
 struct m_tag *tag;
 struct label *label;

 if (m == ((void*)0))
  return (((void*)0));
 tag = m_tag_find(m, PACKET_TAG_MACLABEL, ((void*)0));
 if (tag == ((void*)0))
  return (((void*)0));
 label = (struct label *)(tag+1);
 return (label);
}
