
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dd_desc_paddr; } ;
struct malo_txq {TYPE_1__ dma; } ;
struct TYPE_5__ {int maxnum_wcb; int maxnum_txwcb; int * wcbbase; int rxdesc_read; } ;
struct TYPE_6__ {int dd_desc_paddr; } ;
struct malo_softc {TYPE_2__ malo_hwdma; struct malo_txq* malo_txq; TYPE_3__ malo_rxdma; } ;


 int MALO_NUM_TX_QUEUES ;
 int malo_hal_set_rxtxdma (struct malo_softc*) ;
 int malo_txbuf ;

__attribute__((used)) static int
malo_setup_hwdma(struct malo_softc *sc)
{
 int i;
 struct malo_txq *txq;

 sc->malo_hwdma.rxdesc_read = sc->malo_rxdma.dd_desc_paddr;

 for (i = 0; i < MALO_NUM_TX_QUEUES; i++) {
  txq = &sc->malo_txq[i];
  sc->malo_hwdma.wcbbase[i] = txq->dma.dd_desc_paddr;
 }
 sc->malo_hwdma.maxnum_txwcb = malo_txbuf;
 sc->malo_hwdma.maxnum_wcb = MALO_NUM_TX_QUEUES;

 malo_hal_set_rxtxdma(sc);

 return 0;
}
