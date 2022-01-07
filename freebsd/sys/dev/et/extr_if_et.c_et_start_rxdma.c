
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct et_softc {int ifp; TYPE_1__* sc_rx_data; } ;
struct TYPE_2__ {int rbd_bufsize; } ;


 int CSR_READ_4 (struct et_softc*,int ) ;
 int CSR_WRITE_4 (struct et_softc*,int ,int) ;
 int DELAY (int) ;
 int ETIMEDOUT ;
 int ET_RXDMA_CTRL ;
 int ET_RXDMA_CTRL_HALTED ;
 int ET_RXDMA_CTRL_RING0_ENABLE ;
 int ET_RXDMA_CTRL_RING0_SIZE_MASK ;
 int ET_RXDMA_CTRL_RING1_ENABLE ;
 int ET_RXDMA_CTRL_RING1_SIZE_MASK ;
 int if_printf (int ,char*) ;

__attribute__((used)) static int
et_start_rxdma(struct et_softc *sc)
{
 uint32_t val;

 val = (sc->sc_rx_data[0].rbd_bufsize & ET_RXDMA_CTRL_RING0_SIZE_MASK) |
     ET_RXDMA_CTRL_RING0_ENABLE;
 val |= (sc->sc_rx_data[1].rbd_bufsize & ET_RXDMA_CTRL_RING1_SIZE_MASK) |
     ET_RXDMA_CTRL_RING1_ENABLE;

 CSR_WRITE_4(sc, ET_RXDMA_CTRL, val);

 DELAY(5);

 if (CSR_READ_4(sc, ET_RXDMA_CTRL) & ET_RXDMA_CTRL_HALTED) {
  if_printf(sc->ifp, "can't start RX DMA engine\n");
  return (ETIMEDOUT);
 }
 return (0);
}
