
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct mbuf {struct mbuf* m_next; scalar_t__ m_len; } ;



u_int
m_length(struct mbuf *m0, struct mbuf **last)
{
 struct mbuf *m;
 u_int len;

 len = 0;
 for (m = m0; m != ((void*)0); m = m->m_next) {
  len += m->m_len;
  if (m->m_next == ((void*)0))
   break;
 }
 if (last != ((void*)0))
  *last = m;
 return (len);
}
