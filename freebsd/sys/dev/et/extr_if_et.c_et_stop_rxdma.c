
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_softc {int ifp; } ;


 int CSR_READ_4 (struct et_softc*,int ) ;
 int CSR_WRITE_4 (struct et_softc*,int ,int) ;
 int DELAY (int) ;
 int ETIMEDOUT ;
 int ET_RXDMA_CTRL ;
 int ET_RXDMA_CTRL_HALT ;
 int ET_RXDMA_CTRL_HALTED ;
 int ET_RXDMA_CTRL_RING1_ENABLE ;
 int if_printf (int ,char*) ;

__attribute__((used)) static int
et_stop_rxdma(struct et_softc *sc)
{

 CSR_WRITE_4(sc, ET_RXDMA_CTRL,
      ET_RXDMA_CTRL_HALT | ET_RXDMA_CTRL_RING1_ENABLE);

 DELAY(5);
 if ((CSR_READ_4(sc, ET_RXDMA_CTRL) & ET_RXDMA_CTRL_HALTED) == 0) {
  if_printf(sc->ifp, "can't stop RX DMA engine\n");
  return (ETIMEDOUT);
 }
 return (0);
}
