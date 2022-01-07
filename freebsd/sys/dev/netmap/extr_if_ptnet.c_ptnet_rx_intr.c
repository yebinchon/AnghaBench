
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptnet_softc {int ifp; int dev; } ;
struct TYPE_2__ {int intrs; } ;
struct ptnet_queue {int kring_id; TYPE_1__ stats; struct ptnet_softc* sc; } ;


 int DBG (int ) ;
 scalar_t__ NM_IRQ_PASS ;
 int PTNET_RX_BUDGET ;
 int device_printf (int ,char*,int ) ;
 scalar_t__ netmap_rx_irq (int ,int ,unsigned int*) ;
 int ptnet_rx_eof (struct ptnet_queue*,int ,int) ;

__attribute__((used)) static void
ptnet_rx_intr(void *opaque)
{
 struct ptnet_queue *pq = opaque;
 struct ptnet_softc *sc = pq->sc;
 unsigned int unused;

 DBG(device_printf(sc->dev, "Rx interrupt #%d\n", pq->kring_id));




 if (netmap_rx_irq(sc->ifp, pq->kring_id, &unused) != NM_IRQ_PASS) {
  return;
 }




 ptnet_rx_eof(pq, PTNET_RX_BUDGET, 1);
}
