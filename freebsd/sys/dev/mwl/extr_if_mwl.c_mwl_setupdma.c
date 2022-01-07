
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dd_desc_paddr; } ;
struct mwl_txq {TYPE_2__ dma; } ;
struct TYPE_8__ {int maxNumWCB; int maxNumTxWcb; int * wcbBase; int rxDescRead; } ;
struct TYPE_7__ {int * wcbBase; int rxDescWrite; int rxDescRead; } ;
struct TYPE_5__ {int dd_desc_paddr; } ;
struct mwl_softc {int sc_dev; TYPE_4__ sc_hwdma; int sc_mh; TYPE_3__ sc_hwspecs; struct mwl_txq* sc_txq; TYPE_1__ sc_rxdma; } ;


 int MWL_NUM_ACK_QUEUES ;
 int MWL_NUM_TX_QUEUES ;
 int WR4 (struct mwl_softc*,int ,int ) ;
 int device_printf (int ,char*,int) ;
 int mwl_hal_sethwdma (int ,TYPE_4__*) ;
 int mwl_txbuf ;

__attribute__((used)) static int
mwl_setupdma(struct mwl_softc *sc)
{
 int error, i;

 sc->sc_hwdma.rxDescRead = sc->sc_rxdma.dd_desc_paddr;
 WR4(sc, sc->sc_hwspecs.rxDescRead, sc->sc_hwdma.rxDescRead);
 WR4(sc, sc->sc_hwspecs.rxDescWrite, sc->sc_hwdma.rxDescRead);

 for (i = 0; i < MWL_NUM_TX_QUEUES-MWL_NUM_ACK_QUEUES; i++) {
  struct mwl_txq *txq = &sc->sc_txq[i];
  sc->sc_hwdma.wcbBase[i] = txq->dma.dd_desc_paddr;
  WR4(sc, sc->sc_hwspecs.wcbBase[i], sc->sc_hwdma.wcbBase[i]);
 }
 sc->sc_hwdma.maxNumTxWcb = mwl_txbuf;
 sc->sc_hwdma.maxNumWCB = MWL_NUM_TX_QUEUES-MWL_NUM_ACK_QUEUES;

 error = mwl_hal_sethwdma(sc->sc_mh, &sc->sc_hwdma);
 if (error != 0) {
  device_printf(sc->sc_dev,
      "unable to setup tx/rx dma; hal status %u\n", error);

 }
 return error;
}
