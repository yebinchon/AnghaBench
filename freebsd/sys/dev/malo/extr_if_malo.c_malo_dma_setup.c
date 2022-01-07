
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malo_softc {int * malo_txq; } ;


 int MALO_NUM_TX_QUEUES ;
 int malo_dma_cleanup (struct malo_softc*) ;
 int malo_rxdma_setup (struct malo_softc*) ;
 int malo_txdma_setup (struct malo_softc*,int *) ;
 int malo_txq_init (struct malo_softc*,int *,int) ;

__attribute__((used)) static int
malo_dma_setup(struct malo_softc *sc)
{
 int error, i;


 error = malo_rxdma_setup(sc);
 if (error != 0)
  return error;


 for (i = 0; i < MALO_NUM_TX_QUEUES; i++) {
  error = malo_txdma_setup(sc, &sc->malo_txq[i]);
  if (error != 0) {
   malo_dma_cleanup(sc);

   return error;
  }

  malo_txq_init(sc, &sc->malo_txq[i], i);
 }

 return 0;
}
