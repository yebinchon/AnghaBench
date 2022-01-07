
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_len; int * m_next; } ;


 int m_freem (int *) ;
 struct mbuf* m_getptr (struct mbuf*,int,int*) ;

__attribute__((used)) static void
m_trim(struct mbuf *m, int len)
{
 struct mbuf *n;
 int off;

 if (m == ((void*)0))
  return;
 n = m_getptr(m, len, &off);
 if (n) {
  n->m_len = off;
  if (n->m_next) {
   m_freem(n->m_next);
   n->m_next = ((void*)0);
  }
 }
}
