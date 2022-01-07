
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtwn_softc {int dummy; } ;


 int R12A_BURST_CNT ;
 int R12A_BURST_SZ ;
 int R12A_BURST_SZ_M ;
 int R12A_BURST_SZ_USB1 ;
 int R12A_BURST_SZ_USB2 ;
 int const R12A_DMA_MODE ;
 int R12A_RXDMA_PRO ;
 int R92C_USB_INFO ;
 int const SM (int ,int) ;
 int rtwn_read_1 (struct rtwn_softc*,int ) ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int ,int const) ;

void
r12au_init_burstlen_usb2(struct rtwn_softc *sc)
{
 const uint8_t dma_count = R12A_DMA_MODE | SM(R12A_BURST_CNT, 3);

 if ((rtwn_read_1(sc, R92C_USB_INFO) & 0x30) == 0) {

  rtwn_setbits_1(sc, R12A_RXDMA_PRO, R12A_BURST_SZ_M,
      dma_count | SM(R12A_BURST_SZ, R12A_BURST_SZ_USB2));
 } else {

  rtwn_setbits_1(sc, R12A_RXDMA_PRO, R12A_BURST_SZ_M,
      dma_count | SM(R12A_BURST_SZ, R12A_BURST_SZ_USB1));
 }
}
