
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 struct mbuf* m_free (struct mbuf*) ;

void
m_freem(struct mbuf *bp)
{
  while (bp)
    bp = m_free(bp);
}
