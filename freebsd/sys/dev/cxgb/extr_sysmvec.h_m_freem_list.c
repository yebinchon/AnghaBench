
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;


 int m_freem (struct mbuf*) ;
 int prefetch (struct mbuf*) ;

__attribute__((used)) static __inline void
m_freem_list(struct mbuf *m)
{
 struct mbuf *n;

 while (m != ((void*)0)) {
  n = m->m_nextpkt;
  if (n != ((void*)0))
   prefetch(n);
  m_freem(m);
  m = n;
 }
}
