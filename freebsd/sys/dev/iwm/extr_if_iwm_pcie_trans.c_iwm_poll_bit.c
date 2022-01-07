
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwm_softc {int dummy; } ;


 int DELAY (int) ;
 int IWM_READ (struct iwm_softc*,int) ;

int
iwm_poll_bit(struct iwm_softc *sc, int reg,
 uint32_t bits, uint32_t mask, int timo)
{
 for (;;) {
  if ((IWM_READ(sc, reg) & mask) == (bits & mask)) {
   return 1;
  }
  if (timo < 10) {
   return 0;
  }
  timo -= 10;
  DELAY(10);
 }
}
