
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stge_softc {int sc_dev; } ;


 int CSR_READ_4 (struct stge_softc*,int ) ;
 int DELAY (int) ;
 int DMAC_TxDMAInProg ;
 int STGE_DMACtrl ;
 int STGE_TIMEOUT ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
stge_dma_wait(struct stge_softc *sc)
{
 int i;

 for (i = 0; i < STGE_TIMEOUT; i++) {
  DELAY(2);
  if ((CSR_READ_4(sc, STGE_DMACtrl) & DMAC_TxDMAInProg) == 0)
   break;
 }

 if (i == STGE_TIMEOUT)
  device_printf(sc->sc_dev, "DMA wait timed out\n");
}
