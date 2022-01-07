
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R88E_HIMR ;
 int R88E_HIMRE ;
 int R88E_HIMRE_RXERR ;
 int R88E_HIMRE_RXFOVW ;
 int R88E_HIMRE_TXERR ;
 int R88E_HIMRE_TXFOVW ;
 int R88E_HIMR_CPWM ;
 int R88E_HIMR_CPWM2 ;
 int R88E_HIMR_PSTIMEOUT ;
 int R88E_HIMR_TBDER ;
 int R88E_HISR ;
 int R92C_USB_SPECIAL_OPTION ;
 int R92C_USB_SPECIAL_OPTION_INT_BULK_SEL ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int ,int ) ;
 int rtwn_write_4 (struct rtwn_softc*,int ,int) ;

void
r88eu_init_intr(struct rtwn_softc *sc)
{

 rtwn_write_4(sc, R88E_HISR, 0xffffffff);
 rtwn_write_4(sc, R88E_HIMR, R88E_HIMR_CPWM | R88E_HIMR_CPWM2 |
     R88E_HIMR_TBDER | R88E_HIMR_PSTIMEOUT);
 rtwn_write_4(sc, R88E_HIMRE, R88E_HIMRE_RXFOVW |
     R88E_HIMRE_TXFOVW | R88E_HIMRE_RXERR | R88E_HIMRE_TXERR);
 rtwn_setbits_1(sc, R92C_USB_SPECIAL_OPTION, 0,
     R92C_USB_SPECIAL_OPTION_INT_BULK_SEL);
}
