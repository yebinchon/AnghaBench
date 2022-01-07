
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_flags; int m_len; struct mbuf* m_next; int m_type; } ;


 int M_ALIGN (struct mbuf*,int) ;
 int M_PKTHDR ;
 int M_SIZE (struct mbuf*) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_get (int,int ) ;
 struct mbuf* m_gethdr (int,int ) ;
 int m_move_pkthdr (struct mbuf*,struct mbuf*) ;

struct mbuf *
m_prepend(struct mbuf *m, int len, int how)
{
 struct mbuf *mn;

 if (m->m_flags & M_PKTHDR)
  mn = m_gethdr(how, m->m_type);
 else
  mn = m_get(how, m->m_type);
 if (mn == ((void*)0)) {
  m_freem(m);
  return (((void*)0));
 }
 if (m->m_flags & M_PKTHDR)
  m_move_pkthdr(mn, m);
 mn->m_next = m;
 m = mn;
 if (len < M_SIZE(m))
  M_ALIGN(m, len);
 m->m_len = len;
 return (m);
}
