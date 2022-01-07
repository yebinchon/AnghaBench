
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malo_softc {int * malo_txq; } ;


 int MALO_NUM_TX_QUEUES ;
 int malo_rxdma_cleanup (struct malo_softc*) ;
 int malo_txdma_cleanup (struct malo_softc*,int *) ;

__attribute__((used)) static void
malo_dma_cleanup(struct malo_softc *sc)
{
 int i;

 for (i = 0; i < MALO_NUM_TX_QUEUES; i++)
  malo_txdma_cleanup(sc, &sc->malo_txq[i]);

 malo_rxdma_cleanup(sc);
}
