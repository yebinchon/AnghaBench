
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int ledlink; } ;


 int R92C_LEDCFG1 ;
 int R92C_LEDCFG1_DIS ;
 int RTWN_LED_LINK ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int ,int ) ;

void
r92e_set_led(struct rtwn_softc *sc, int led, int on)
{

 if (led == RTWN_LED_LINK) {
  if (!on)
   rtwn_setbits_1(sc, R92C_LEDCFG1, 0, R92C_LEDCFG1_DIS);
  else
   rtwn_setbits_1(sc, R92C_LEDCFG1, R92C_LEDCFG1_DIS, 0);
  sc->ledlink = on;
 }
}
