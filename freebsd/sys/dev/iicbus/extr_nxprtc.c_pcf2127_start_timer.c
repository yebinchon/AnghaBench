
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nxprtc_softc {int tmcaddr; } ;


 int PCF2127_B_TMR_CD ;
 int PCF2127_M_TMR_CTRL ;
 int PCF2127_R_TMR_CTL ;
 int PCF8523_B_TMR_A_64HZ ;
 int read_reg (struct nxprtc_softc*,int ,int*) ;
 int write_reg (struct nxprtc_softc*,int ,int) ;

__attribute__((used)) static int
pcf2127_start_timer(struct nxprtc_softc *sc)
{
 int err;
 uint8_t stdctl, tmrctl;
 if ((err = read_reg(sc, PCF2127_R_TMR_CTL, &tmrctl)) != 0)
  return (err);

 stdctl = PCF2127_B_TMR_CD | PCF8523_B_TMR_A_64HZ;

 if ((tmrctl & PCF2127_M_TMR_CTRL) != stdctl) {
  if ((err = write_reg(sc, sc->tmcaddr, 0)) != 0)
   return (err);
  if ((err = write_reg(sc, PCF2127_R_TMR_CTL, stdctl)) != 0)
   return (err);
 }
 return (0);
}
