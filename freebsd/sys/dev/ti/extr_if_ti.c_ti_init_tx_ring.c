
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_txdesc {int dummy; } ;
struct TYPE_2__ {int ti_txfreeq; struct ti_txdesc* ti_txdesc; int ti_txbusyq; } ;
struct ti_softc {scalar_t__ ti_tx_saved_prodidx; scalar_t__ ti_tx_saved_considx; scalar_t__ ti_txcnt; TYPE_1__ ti_cdata; } ;


 int CSR_WRITE_4 (struct ti_softc*,int ,int ) ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct ti_txdesc*,int ) ;
 int TI_MB_SENDPROD_IDX ;
 int TI_TX_RING_CNT ;
 int tx_q ;

__attribute__((used)) static int
ti_init_tx_ring(struct ti_softc *sc)
{
 struct ti_txdesc *txd;
 int i;

 STAILQ_INIT(&sc->ti_cdata.ti_txfreeq);
 STAILQ_INIT(&sc->ti_cdata.ti_txbusyq);
 for (i = 0; i < TI_TX_RING_CNT; i++) {
  txd = &sc->ti_cdata.ti_txdesc[i];
  STAILQ_INSERT_TAIL(&sc->ti_cdata.ti_txfreeq, txd, tx_q);
 }
 sc->ti_txcnt = 0;
 sc->ti_tx_saved_considx = 0;
 sc->ti_tx_saved_prodidx = 0;
 CSR_WRITE_4(sc, TI_MB_SENDPROD_IDX, 0);
 return (0);
}
