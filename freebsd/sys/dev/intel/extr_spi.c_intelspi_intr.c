
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct intelspi_softc {int sc_flags; int sc_dev; } ;


 int INTELSPI_BUSY ;
 int INTELSPI_LOCK (struct intelspi_softc*) ;
 int INTELSPI_READ (struct intelspi_softc*,int ) ;
 int INTELSPI_SSPREG_SSCR1 ;
 int INTELSPI_SSPREG_SSSR ;
 int INTELSPI_UNLOCK (struct intelspi_softc*) ;
 int INTELSPI_WRITE (struct intelspi_softc*,int ,int) ;
 int SSCR1_RIE ;
 int SSCR1_TIE ;
 int SSCR1_TINTE ;
 scalar_t__ intelspi_transact (struct intelspi_softc*) ;
 int wakeup (int ) ;

__attribute__((used)) static void
intelspi_intr(void *arg)
{
 struct intelspi_softc *sc;
 uint32_t reg;

 sc = (struct intelspi_softc *)arg;

 INTELSPI_LOCK(sc);
 if ((sc->sc_flags & INTELSPI_BUSY) == 0) {
  INTELSPI_UNLOCK(sc);
  return;
 }


 reg = INTELSPI_READ(sc, INTELSPI_SSPREG_SSSR);
 if (reg == 0xffffffffU) {
  INTELSPI_UNLOCK(sc);
  return;
 }


 if (intelspi_transact(sc)) {

  reg = INTELSPI_READ(sc, INTELSPI_SSPREG_SSCR1);
  reg &= ~(SSCR1_TIE | SSCR1_RIE | SSCR1_TINTE);
  INTELSPI_WRITE(sc, INTELSPI_SSPREG_SSCR1, reg);
  wakeup(sc->sc_dev);
 }

 INTELSPI_UNLOCK(sc);
}
