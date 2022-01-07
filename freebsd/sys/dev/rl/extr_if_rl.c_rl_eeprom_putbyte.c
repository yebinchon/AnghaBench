
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl_softc {int rl_eecmd_read; } ;


 int DELAY (int) ;
 int EE_CLR (int ) ;
 int EE_SET (int ) ;
 int RL_EE_CLK ;
 int RL_EE_DATAIN ;

__attribute__((used)) static void
rl_eeprom_putbyte(struct rl_softc *sc, int addr)
{
 int d, i;

 d = addr | sc->rl_eecmd_read;




 for (i = 0x400; i; i >>= 1) {
  if (d & i) {
   EE_SET(RL_EE_DATAIN);
  } else {
   EE_CLR(RL_EE_DATAIN);
  }
  DELAY(100);
  EE_SET(RL_EE_CLK);
  DELAY(150);
  EE_CLR(RL_EE_CLK);
  DELAY(100);
 }
}
