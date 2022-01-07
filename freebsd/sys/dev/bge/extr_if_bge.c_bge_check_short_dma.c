
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_len; struct mbuf* m_next; } ;


 int M_NOWAIT ;
 struct mbuf* m_defrag (struct mbuf*,int ) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static struct mbuf *
bge_check_short_dma(struct mbuf *m)
{
 struct mbuf *n;
 int found;
 for (n = m, found = 0; n != ((void*)0); n = n->m_next) {
  if (n->m_len < 8) {
   found++;
   if (found > 1)
    break;
   continue;
  }
  found = 0;
 }

 if (found > 1) {
  n = m_defrag(m, M_NOWAIT);
  if (n == ((void*)0))
   m_freem(m);
 } else
  n = m;
 return (n);
}
