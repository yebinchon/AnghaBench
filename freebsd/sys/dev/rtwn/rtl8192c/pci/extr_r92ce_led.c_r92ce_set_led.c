
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int ledlink; } ;


 int R92C_LEDCFG2 ;
 int R92C_LEDCFG2_DIS ;
 int R92C_LEDCFG2_EN ;
 int RTWN_LED_LINK ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int,int ) ;

void
r92ce_set_led(struct rtwn_softc *sc, int led, int on)
{

 if (led == RTWN_LED_LINK) {
  rtwn_setbits_1(sc, R92C_LEDCFG2, 0x0f,
      on ? R92C_LEDCFG2_EN : R92C_LEDCFG2_DIS);
  sc->ledlink = on;
 }
}
