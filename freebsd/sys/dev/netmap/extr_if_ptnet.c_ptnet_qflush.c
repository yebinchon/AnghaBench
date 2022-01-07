
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptnet_softc {int num_rings; struct ptnet_queue* queues; } ;
struct ptnet_queue {scalar_t__ bufring; } ;
struct mbuf {int dummy; } ;
typedef int if_t ;


 int PTNET_Q_LOCK (struct ptnet_queue*) ;
 int PTNET_Q_UNLOCK (struct ptnet_queue*) ;
 struct mbuf* buf_ring_dequeue_sc (scalar_t__) ;
 struct ptnet_softc* if_getsoftc (int ) ;
 int if_qflush (int ) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
ptnet_qflush(if_t ifp)
{
 struct ptnet_softc *sc = if_getsoftc(ifp);
 int i;


 for (i = 0; i < sc->num_rings; i++) {
  struct ptnet_queue *pq = sc->queues + i;
  struct mbuf *m;

  PTNET_Q_LOCK(pq);
  if (pq->bufring) {
   while ((m = buf_ring_dequeue_sc(pq->bufring))) {
    m_freem(m);
   }
  }
  PTNET_Q_UNLOCK(pq);
 }

 if_qflush(ifp);
}
