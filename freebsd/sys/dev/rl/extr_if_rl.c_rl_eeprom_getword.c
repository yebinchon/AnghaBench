
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rl_softc {int dummy; } ;


 int CSR_READ_1 (struct rl_softc*,int ) ;
 int CSR_WRITE_1 (struct rl_softc*,int ,int) ;
 int DELAY (int) ;
 int EE_CLR (int ) ;
 int EE_SET (int ) ;
 int RL_EECMD ;
 int RL_EEMODE_OFF ;
 int RL_EEMODE_PROGRAM ;
 int RL_EE_CLK ;
 int RL_EE_DATAOUT ;
 int RL_EE_SEL ;
 int rl_eeprom_putbyte (struct rl_softc*,int) ;

__attribute__((used)) static void
rl_eeprom_getword(struct rl_softc *sc, int addr, uint16_t *dest)
{
 int i;
 uint16_t word = 0;


 CSR_WRITE_1(sc, RL_EECMD, RL_EEMODE_PROGRAM|RL_EE_SEL);




 rl_eeprom_putbyte(sc, addr);

 CSR_WRITE_1(sc, RL_EECMD, RL_EEMODE_PROGRAM|RL_EE_SEL);




 for (i = 0x8000; i; i >>= 1) {
  EE_SET(RL_EE_CLK);
  DELAY(100);
  if (CSR_READ_1(sc, RL_EECMD) & RL_EE_DATAOUT)
   word |= i;
  EE_CLR(RL_EE_CLK);
  DELAY(100);
 }


 CSR_WRITE_1(sc, RL_EECMD, RL_EEMODE_OFF);

 *dest = word;
}
