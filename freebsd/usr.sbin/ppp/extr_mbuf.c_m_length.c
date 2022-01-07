
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {scalar_t__ m_len; struct mbuf* m_next; } ;



size_t
m_length(struct mbuf *bp)
{
  size_t len;

  for (len = 0; bp; bp = bp->m_next)
    len += bp->m_len;
  return len;
}
