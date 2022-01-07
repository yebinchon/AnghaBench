
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_len; } ;


 int M_NOWAIT ;
 int M_PREPEND (struct mbuf*,int,int ) ;
 struct mbuf* m_pullup (struct mbuf*,int) ;

struct mbuf *
ng_l2cap_prepend(struct mbuf *m, int size)
{
 M_PREPEND(m, size, M_NOWAIT);
 if (m == ((void*)0) || (m->m_len < size && (m = m_pullup(m, size)) == ((void*)0)))
  return (((void*)0));

 return (m);
}
