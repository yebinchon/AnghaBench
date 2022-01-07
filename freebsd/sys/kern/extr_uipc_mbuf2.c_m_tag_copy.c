
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_tag {scalar_t__ m_tag_id; int m_tag_len; int m_tag_cookie; } ;


 int KASSERT (struct m_tag*,char*) ;
 int MBUF_CHECKSLEEP (int) ;
 scalar_t__ PACKET_TAG_MACLABEL ;
 int bcopy (struct m_tag*,struct m_tag*,int ) ;
 struct m_tag* m_tag_alloc (int ,scalar_t__,int ,int) ;
 int m_tag_free (struct m_tag*) ;
 int mac_mbuf_tag_copy (struct m_tag*,struct m_tag*) ;
 scalar_t__ mac_mbuf_tag_init (struct m_tag*,int) ;

struct m_tag *
m_tag_copy(struct m_tag *t, int how)
{
 struct m_tag *p;

 MBUF_CHECKSLEEP(how);
 KASSERT(t, ("m_tag_copy: null tag"));
 p = m_tag_alloc(t->m_tag_cookie, t->m_tag_id, t->m_tag_len, how);
 if (p == ((void*)0))
  return (((void*)0));
  bcopy(t + 1, p + 1, t->m_tag_len);
 return p;
}
