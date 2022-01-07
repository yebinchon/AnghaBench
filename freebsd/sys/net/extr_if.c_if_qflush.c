
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;
struct ifaltq {scalar_t__ ifq_len; scalar_t__ ifq_tail; struct mbuf* ifq_head; } ;
struct ifnet {struct ifaltq if_snd; } ;


 scalar_t__ ALTQ_IS_ENABLED (struct ifaltq*) ;
 int ALTQ_PURGE (struct ifaltq*) ;
 int IFQ_LOCK (struct ifaltq*) ;
 int IFQ_UNLOCK (struct ifaltq*) ;
 int m_freem (struct mbuf*) ;

void
if_qflush(struct ifnet *ifp)
{
 struct mbuf *m, *n;
 struct ifaltq *ifq;

 ifq = &ifp->if_snd;
 IFQ_LOCK(ifq);




 n = ifq->ifq_head;
 while ((m = n) != ((void*)0)) {
  n = m->m_nextpkt;
  m_freem(m);
 }
 ifq->ifq_head = 0;
 ifq->ifq_tail = 0;
 ifq->ifq_len = 0;
 IFQ_UNLOCK(ifq);
}
