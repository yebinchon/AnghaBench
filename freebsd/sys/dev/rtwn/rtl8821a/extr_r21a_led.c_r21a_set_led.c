
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int ledlink; } ;


 int R12A_LEDCFG2_ENA ;
 int R92C_LEDCFG0_DIS ;
 int R92C_LEDCFG2 ;
 int RTWN_LED_LINK ;
 int rtwn_write_1 (struct rtwn_softc*,int ,int) ;

void
r21a_set_led(struct rtwn_softc *sc, int led, int on)
{
 if (led == RTWN_LED_LINK) {
  rtwn_write_1(sc, R92C_LEDCFG2,
      R12A_LEDCFG2_ENA | (on ? 0 : R92C_LEDCFG0_DIS));
  sc->ledlink = on;
 }
}
