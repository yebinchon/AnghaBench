
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {int * sc_txq; } ;


 int MWL_NUM_TX_QUEUES ;
 int mwl_rxdma_cleanup (struct mwl_softc*) ;
 int mwl_txdma_cleanup (struct mwl_softc*,int *) ;

__attribute__((used)) static void
mwl_dma_cleanup(struct mwl_softc *sc)
{
 int i;

 for (i = 0; i < MWL_NUM_TX_QUEUES; i++)
  mwl_txdma_cleanup(sc, &sc->sc_txq[i]);
 mwl_rxdma_cleanup(sc);
}
