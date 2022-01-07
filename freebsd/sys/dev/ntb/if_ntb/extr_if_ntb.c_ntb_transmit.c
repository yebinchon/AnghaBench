
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_net_queue {int tx_task; int tx_tq; int tx_lock; int br; } ;
struct ntb_net_ctx {int num_queues; struct ntb_net_queue* queues; } ;
struct TYPE_2__ {int flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
typedef int if_t ;


 int CTR0 (int ,char*) ;
 int KTR_NTB ;
 scalar_t__ M_HASHTYPE_GET (struct mbuf*) ;
 scalar_t__ M_HASHTYPE_NONE ;
 int curcpu ;
 int drbr_enqueue (int ,int ,struct mbuf*) ;
 struct ntb_net_ctx* if_getsoftc (int ) ;
 scalar_t__ mtx_trylock (int *) ;
 int mtx_unlock (int *) ;
 int ntb_transmit_locked (struct ntb_net_queue*) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
ntb_transmit(if_t ifp, struct mbuf *m)
{
 struct ntb_net_ctx *sc = if_getsoftc(ifp);
 struct ntb_net_queue *q;
 int error, i;

 CTR0(KTR_NTB, "TX: ntb_transmit");
 if (M_HASHTYPE_GET(m) != M_HASHTYPE_NONE)
  i = m->m_pkthdr.flowid % sc->num_queues;
 else
  i = curcpu % sc->num_queues;
 q = &sc->queues[i];

 error = drbr_enqueue(ifp, q->br, m);
 if (error)
  return (error);

 if (mtx_trylock(&q->tx_lock)) {
  ntb_transmit_locked(q);
  mtx_unlock(&q->tx_lock);
 } else
  taskqueue_enqueue(q->tx_tq, &q->tx_task);
 return (0);
}
