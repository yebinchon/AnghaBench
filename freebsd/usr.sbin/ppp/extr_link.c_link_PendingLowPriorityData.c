
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqueue {size_t len; struct mbuf* top; } ;
struct mbuf {scalar_t__ priv; struct mbuf* m_nextpkt; } ;
struct link {struct mqueue* Queue; } ;


 struct mqueue* LINK_HIGHQ (struct link*) ;
 scalar_t__ m_length (struct mbuf*) ;

void
link_PendingLowPriorityData(struct link *l, size_t *pkts, size_t *octets)
{
  struct mqueue *queue, *highest;
  struct mbuf *m;
  size_t len;
  highest = LINK_HIGHQ(l);
  *pkts = *octets = 0;
  for (queue = l->Queue; queue < highest; queue++) {
    len = queue->len;
    *pkts += len;
    for (m = queue->top; len--; m = m->m_nextpkt)
      *octets += m_length(m) - m->priv;
  }
}
