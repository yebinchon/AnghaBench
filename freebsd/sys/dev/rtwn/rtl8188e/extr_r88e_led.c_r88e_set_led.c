
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int ledlink; } ;


 int R92C_LEDCFG0_DIS ;
 int R92C_LEDCFG2 ;
 int R92C_MAC_PINMUX_CFG ;
 int RTWN_LED_LINK ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int,int) ;

void
r88e_set_led(struct rtwn_softc *sc, int led, int on)
{

 if (led == RTWN_LED_LINK) {
  if (!on) {
   rtwn_setbits_1(sc, R92C_LEDCFG2, 0x6f,
       R92C_LEDCFG0_DIS);
   rtwn_setbits_1(sc, R92C_MAC_PINMUX_CFG, 0x01, 0);
  } else
   rtwn_setbits_1(sc, R92C_LEDCFG2, 0x0f, 0x60);
  sc->ledlink = on;
 }


}
