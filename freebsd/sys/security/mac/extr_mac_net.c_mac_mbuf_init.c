
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct label {int dummy; } ;


 int ENOMEM ;
 int MPC_OBJECT_MBUF ;
 int M_ASSERTPKTHDR (struct mbuf*) ;
 int PACKET_TAG_MACLABEL ;
 int m_tag_free (struct m_tag*) ;
 struct m_tag* m_tag_get (int ,int,int) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;
 int mac_labeled ;
 int mac_mbuf_tag_init (struct m_tag*,int) ;

int
mac_mbuf_init(struct mbuf *m, int flag)
{
 struct m_tag *tag;
 int error;

 M_ASSERTPKTHDR(m);

 if (mac_labeled & MPC_OBJECT_MBUF) {
  tag = m_tag_get(PACKET_TAG_MACLABEL, sizeof(struct label),
      flag);
  if (tag == ((void*)0))
   return (ENOMEM);
  error = mac_mbuf_tag_init(tag, flag);
  if (error) {
   m_tag_free(tag);
   return (error);
  }
  m_tag_prepend(m, tag);
 }
 return (0);
}
