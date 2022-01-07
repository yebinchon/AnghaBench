
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {struct r12a_softc* sc_priv; } ;
struct r12a_softc {int ac_usb_dma_size; int ac_usb_dma_time; } ;


 int R92C_RXDMA_AGG_PG_TH ;
 int R92C_TRXDMA_CTRL ;
 int R92C_TRXDMA_CTRL_RXDMA_AGG_EN ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int ,int ) ;
 int rtwn_write_2 (struct rtwn_softc*,int ,int) ;

void
r12au_init_rx_agg(struct rtwn_softc *sc)
{
 struct r12a_softc *rs = sc->sc_priv;


 rtwn_write_2(sc, R92C_RXDMA_AGG_PG_TH,
     rs->ac_usb_dma_size | (rs->ac_usb_dma_time << 8));
 rtwn_setbits_1(sc, R92C_TRXDMA_CTRL, 0,
     R92C_TRXDMA_CTRL_RXDMA_AGG_EN);
}
