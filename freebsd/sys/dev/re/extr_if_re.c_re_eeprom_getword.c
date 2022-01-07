
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct rl_softc {int dummy; } ;


 int CSR_READ_1 (struct rl_softc*,int ) ;
 int DELAY (int) ;
 int EE_CLR (int ) ;
 int EE_SET (int ) ;
 int RL_EECMD ;
 int RL_EE_CLK ;
 int RL_EE_DATAOUT ;
 int re_eeprom_putbyte (struct rl_softc*,int) ;

__attribute__((used)) static void
re_eeprom_getword(struct rl_softc *sc, int addr, u_int16_t *dest)
{
 int i;
 u_int16_t word = 0;




 re_eeprom_putbyte(sc, addr);




 for (i = 0x8000; i; i >>= 1) {
  EE_SET(RL_EE_CLK);
  DELAY(100);
  if (CSR_READ_1(sc, RL_EECMD) & RL_EE_DATAOUT)
   word |= i;
  EE_CLR(RL_EE_CLK);
  DELAY(100);
 }

 *dest = word;
}
