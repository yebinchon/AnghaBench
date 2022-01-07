
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nxprtc_softc {int tmcaddr; } ;


 int PCF8523_B_CLKOUT_HIGHZ ;
 int PCF8523_B_CLKOUT_TACD ;
 int PCF8523_B_TMR_A_64HZ ;
 int PCF8523_M_TMR_A_FREQ ;
 int PCF8523_R_TMR_A_FREQ ;
 int PCF8523_R_TMR_CLKOUT ;
 int read_reg (struct nxprtc_softc*,int ,int*) ;
 int write_reg (struct nxprtc_softc*,int ,int) ;

__attribute__((used)) static int
pcf8523_start_timer(struct nxprtc_softc *sc)
{
 int err;
 uint8_t clkout, stdclk, stdfreq, tmrfreq;
 if ((err = read_reg(sc, PCF8523_R_TMR_A_FREQ, &tmrfreq)) != 0)
  return (err);
 if ((err = read_reg(sc, PCF8523_R_TMR_CLKOUT, &clkout)) != 0)
  return (err);

 stdfreq = PCF8523_B_TMR_A_64HZ;
 stdclk = PCF8523_B_CLKOUT_TACD | PCF8523_B_CLKOUT_HIGHZ;

 if (clkout != stdclk || (tmrfreq & PCF8523_M_TMR_A_FREQ) != stdfreq) {
  if ((err = write_reg(sc, sc->tmcaddr, 0)) != 0)
   return (err);
  if ((err = write_reg(sc, PCF8523_R_TMR_A_FREQ, stdfreq)) != 0)
   return (err);
  if ((err = write_reg(sc, PCF8523_R_TMR_CLKOUT, stdclk)) != 0)
   return (err);
 }
 return (0);
}
