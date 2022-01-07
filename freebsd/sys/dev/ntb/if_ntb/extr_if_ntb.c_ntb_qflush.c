
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_net_queue {int tx_lock; int br; } ;
struct ntb_net_ctx {int num_queues; struct ntb_net_queue* queues; } ;
struct mbuf {int dummy; } ;
typedef int if_t ;


 struct mbuf* buf_ring_dequeue_sc (int ) ;
 struct ntb_net_ctx* if_getsoftc (int ) ;
 int if_qflush (int ) ;
 int m_freem (struct mbuf*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
ntb_qflush(if_t ifp)
{
 struct ntb_net_ctx *sc = if_getsoftc(ifp);
 struct ntb_net_queue *q;
 struct mbuf *m;
 int i;

 for (i = 0; i < sc->num_queues; i++) {
  q = &sc->queues[i];
  mtx_lock(&q->tx_lock);
  while ((m = buf_ring_dequeue_sc(q->br)) != ((void*)0))
   m_freem(m);
  mtx_unlock(&q->tx_lock);
 }
 if_qflush(ifp);
}
