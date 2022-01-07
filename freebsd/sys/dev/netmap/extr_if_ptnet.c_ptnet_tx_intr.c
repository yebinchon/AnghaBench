
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptnet_softc {int ifp; int dev; } ;
struct TYPE_2__ {int intrs; } ;
struct ptnet_queue {int task; int taskq; int kring_id; TYPE_1__ stats; struct ptnet_softc* sc; } ;


 int DBG (int ) ;
 scalar_t__ NM_IRQ_PASS ;
 int device_printf (int ,char*,int ) ;
 scalar_t__ netmap_tx_irq (int ,int ) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
ptnet_tx_intr(void *opaque)
{
 struct ptnet_queue *pq = opaque;
 struct ptnet_softc *sc = pq->sc;

 DBG(device_printf(sc->dev, "Tx interrupt #%d\n", pq->kring_id));




 if (netmap_tx_irq(sc->ifp, pq->kring_id) != NM_IRQ_PASS) {
  return;
 }





 taskqueue_enqueue(pq->taskq, &pq->task);
}
