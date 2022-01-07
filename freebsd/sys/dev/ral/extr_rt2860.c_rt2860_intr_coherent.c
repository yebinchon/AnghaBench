
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt2860_softc {int dummy; } ;


 int DPRINTF (char*) ;
 int RAL_READ (struct rt2860_softc*,int ) ;
 int RAL_WRITE (struct rt2860_softc*,int ,int) ;
 int RT2860_RX_DMA_EN ;
 int RT2860_TX_DMA_EN ;
 int RT2860_TX_WB_DDONE ;
 int RT2860_WPDMA_GLO_CFG ;
 int rt2860_txrx_enable (struct rt2860_softc*) ;

__attribute__((used)) static void
rt2860_intr_coherent(struct rt2860_softc *sc)
{
 uint32_t tmp;



 DPRINTF(("Tx/Rx Coherent interrupt\n"));


 tmp = RAL_READ(sc, RT2860_WPDMA_GLO_CFG);
 tmp &= ~(RT2860_TX_WB_DDONE | RT2860_RX_DMA_EN | RT2860_TX_DMA_EN);
 RAL_WRITE(sc, RT2860_WPDMA_GLO_CFG, tmp);

 (void)rt2860_txrx_enable(sc);
}
