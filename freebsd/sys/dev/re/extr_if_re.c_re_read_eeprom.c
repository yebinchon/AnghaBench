
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct rl_softc {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int CSR_CLRBIT_1 (struct rl_softc*,int ,int ) ;
 int CSR_SETBIT_1 (struct rl_softc*,int ,int ) ;
 int DELAY (int) ;
 int RL_EECMD ;
 int RL_EEMODE_PROGRAM ;
 int RL_EE_SEL ;
 int re_eeprom_getword (struct rl_softc*,int,int *) ;

__attribute__((used)) static void
re_read_eeprom(struct rl_softc *sc, caddr_t dest, int off, int cnt)
{
 int i;
 u_int16_t word = 0, *ptr;

 CSR_SETBIT_1(sc, RL_EECMD, RL_EEMODE_PROGRAM);

        DELAY(100);

 for (i = 0; i < cnt; i++) {
  CSR_SETBIT_1(sc, RL_EECMD, RL_EE_SEL);
  re_eeprom_getword(sc, off + i, &word);
  CSR_CLRBIT_1(sc, RL_EECMD, RL_EE_SEL);
  ptr = (u_int16_t *)(dest + (i * 2));
                *ptr = word;
 }

 CSR_CLRBIT_1(sc, RL_EECMD, RL_EEMODE_PROGRAM);
}
