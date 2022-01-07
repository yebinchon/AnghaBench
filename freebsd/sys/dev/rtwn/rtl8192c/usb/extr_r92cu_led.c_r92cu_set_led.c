
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtwn_softc {int ledlink; } ;


 int R92C_LEDCFG0 ;
 int R92C_LEDCFG0_DIS ;
 int RTWN_LED_LINK ;
 int rtwn_read_1 (struct rtwn_softc*,int ) ;
 int rtwn_write_1 (struct rtwn_softc*,int ,int) ;

void
r92cu_set_led(struct rtwn_softc *sc, int led, int on)
{
 uint8_t reg;

 if (led == RTWN_LED_LINK) {
  reg = rtwn_read_1(sc, R92C_LEDCFG0) & 0x70;
  if (!on)
   reg |= R92C_LEDCFG0_DIS;
  rtwn_write_1(sc, R92C_LEDCFG0, reg);
  sc->ledlink = on;
 }
}
