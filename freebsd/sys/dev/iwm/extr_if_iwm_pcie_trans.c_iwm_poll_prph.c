
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwm_softc {int dummy; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int iwm_read_prph (struct iwm_softc*,int) ;

int
iwm_poll_prph(struct iwm_softc *sc, uint32_t addr, uint32_t bits, uint32_t mask,
    int timeout)
{
 do {
  if ((iwm_read_prph(sc, addr) & mask) == (bits & mask))
   return (0);
  DELAY(10);
  timeout -= 10;
 } while (timeout > 0);

 return (ETIMEDOUT);
}
