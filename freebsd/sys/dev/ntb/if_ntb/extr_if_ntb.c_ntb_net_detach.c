
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_net_queue {int tx_lock; int tx_tq; int queue_full; int br; int qp; } ;
struct ntb_net_ctx {int num_queues; struct ntb_net_queue* queues; int media; int ifp; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int buf_ring_free (int ,int ) ;
 int callout_drain (int *) ;
 struct ntb_net_ctx* device_get_softc (int ) ;
 int ether_ifdetach (int ) ;
 int free (struct ntb_net_queue*,int ) ;
 int if_free (int ) ;
 int ifmedia_removeall (int *) ;
 int mtx_destroy (int *) ;
 int ntb_transport_free_queue (int ) ;
 int ntb_transport_link_down (int ) ;
 int taskqueue_drain_all (int ) ;

__attribute__((used)) static int
ntb_net_detach(device_t dev)
{
 struct ntb_net_ctx *sc = device_get_softc(dev);
 struct ntb_net_queue *q;
 int i;

 for (i = 0; i < sc->num_queues; i++)
  ntb_transport_link_down(sc->queues[i].qp);
 ether_ifdetach(sc->ifp);
 if_free(sc->ifp);
 ifmedia_removeall(&sc->media);
 for (i = 0; i < sc->num_queues; i++) {
  q = &sc->queues[i];
  ntb_transport_free_queue(q->qp);
  buf_ring_free(q->br, M_DEVBUF);
  callout_drain(&q->queue_full);
  taskqueue_drain_all(q->tx_tq);
  mtx_destroy(&q->tx_lock);
 }
 free(sc->queues, M_DEVBUF);
 return (0);
}
