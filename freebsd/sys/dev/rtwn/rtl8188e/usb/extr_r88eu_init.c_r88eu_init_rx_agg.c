
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 scalar_t__ R92C_RXDMA_AGG_PG_TH ;
 int R92C_TRXDMA_CTRL ;
 int R92C_TRXDMA_CTRL_RXDMA_AGG_EN ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int ,int ) ;
 int rtwn_write_1 (struct rtwn_softc*,scalar_t__,int) ;

void
r88eu_init_rx_agg(struct rtwn_softc *sc)
{

 rtwn_setbits_1(sc, R92C_TRXDMA_CTRL, 0,
     R92C_TRXDMA_CTRL_RXDMA_AGG_EN);

 rtwn_write_1(sc, R92C_RXDMA_AGG_PG_TH, 48);
 rtwn_write_1(sc, R92C_RXDMA_AGG_PG_TH + 1, 4);
}
