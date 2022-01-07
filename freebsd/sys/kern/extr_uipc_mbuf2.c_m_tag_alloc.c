
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct m_tag {int m_tag_free; } ;


 int MBUF_CHECKSLEEP (int) ;
 int M_PACKET_TAGS ;
 int m_tag_free_default ;
 int m_tag_setup (struct m_tag*,int ,int,int) ;
 struct m_tag* malloc (int,int ,int) ;

struct m_tag *
m_tag_alloc(uint32_t cookie, int type, int len, int wait)
{
 struct m_tag *t;

 MBUF_CHECKSLEEP(wait);
 if (len < 0)
  return ((void*)0);
 t = malloc(len + sizeof(struct m_tag), M_PACKET_TAGS, wait);
 if (t == ((void*)0))
  return ((void*)0);
 m_tag_setup(t, cookie, type, len);
 t->m_tag_free = m_tag_free_default;
 return t;
}
