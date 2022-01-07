
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dd_desc_paddr; scalar_t__ dd_desc; } ;
struct ath_softc {TYPE_1__ sc_txsdma; int sc_ah; int sc_tx_statuslen; } ;


 int ATH_TXSTATUS_RING_SIZE ;
 int HAL_NUM_TX_QUEUES ;
 int ath_descdma_alloc_desc (struct ath_softc*,TYPE_1__*,int *,char*,int ,int ) ;
 int ath_edma_setup_txfifo (struct ath_softc*,int) ;
 int ath_hal_setuptxstatusring (int ,void*,int ,int ) ;

__attribute__((used)) static int
ath_edma_dma_txsetup(struct ath_softc *sc)
{
 int error;
 int i;

 error = ath_descdma_alloc_desc(sc, &sc->sc_txsdma,
     ((void*)0), "txcomp", sc->sc_tx_statuslen, ATH_TXSTATUS_RING_SIZE);
 if (error != 0)
  return (error);

 ath_hal_setuptxstatusring(sc->sc_ah,
     (void *) sc->sc_txsdma.dd_desc,
     sc->sc_txsdma.dd_desc_paddr,
     ATH_TXSTATUS_RING_SIZE);

 for (i = 0; i < HAL_NUM_TX_QUEUES; i++) {
  ath_edma_setup_txfifo(sc, i);
 }

 return (0);
}
