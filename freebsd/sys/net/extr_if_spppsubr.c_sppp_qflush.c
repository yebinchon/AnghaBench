
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;
struct ifqueue {scalar_t__ ifq_len; scalar_t__ ifq_tail; struct mbuf* ifq_head; } ;


 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
sppp_qflush(struct ifqueue *ifq)
{
 struct mbuf *m, *n;

 n = ifq->ifq_head;
 while ((m = n)) {
  n = m->m_nextpkt;
  m_freem (m);
 }
 ifq->ifq_head = 0;
 ifq->ifq_tail = 0;
 ifq->ifq_len = 0;
}
