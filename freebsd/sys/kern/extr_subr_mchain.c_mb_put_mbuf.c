
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_next; scalar_t__ m_len; } ;
struct mbchain {struct mbuf* mb_cur; int mb_mleft; int mb_count; } ;


 int M_TRAILINGSPACE (struct mbuf*) ;

int
mb_put_mbuf(struct mbchain *mbp, struct mbuf *m)
{
 mbp->mb_cur->m_next = m;
 while (m) {
  mbp->mb_count += m->m_len;
  if (m->m_next == ((void*)0))
   break;
  m = m->m_next;
 }
 mbp->mb_mleft = M_TRAILINGSPACE(m);
 mbp->mb_cur = m;
 return (0);
}
