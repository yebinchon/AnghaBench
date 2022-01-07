
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R92C_TXDMA_OFFSET_CHK ;
 int R92C_TXDMA_OFFSET_DROP_DATA_EN ;
 int rtwn_setbits_1_shift (struct rtwn_softc*,int ,int ,int ,int) ;

__attribute__((used)) static void
rtwn_usb_drop_incorrect_tx(struct rtwn_softc *sc)
{

 rtwn_setbits_1_shift(sc, R92C_TXDMA_OFFSET_CHK, 0,
     R92C_TXDMA_OFFSET_DROP_DATA_EN, 1);
}
