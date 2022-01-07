
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct cs4231_softc {scalar_t__ sc_enabled; int sc_flags; int sc_rch; int sc_pch; } ;


 int APC_CSR ;
 int APC_CSR_RESET ;
 int APC_WRITE (struct cs4231_softc*,int ,int ) ;
 int CS4231_LOCK (struct cs4231_softc*) ;
 int CS4231_LOCK_ASSERT (struct cs4231_softc*) ;
 int CS4231_SBUS ;
 int CS4231_UNLOCK (struct cs4231_softc*) ;
 int CS_PIN_CONTROL ;
 int DELAY (int) ;
 int INTERRUPT_ENABLE ;
 int cs4231_ebdma_reset (struct cs4231_softc*) ;
 int cs4231_halt (int *) ;
 int cs4231_read (struct cs4231_softc*,int ) ;
 int cs4231_write (struct cs4231_softc*,int ,int) ;

__attribute__((used)) static void
cs4231_disable(struct cs4231_softc *sc)
{
 u_int8_t v;

 CS4231_LOCK_ASSERT(sc);

 if (sc->sc_enabled == 0)
  return;
 sc->sc_enabled = 0;
 CS4231_UNLOCK(sc);
 cs4231_halt(&sc->sc_pch);
 cs4231_halt(&sc->sc_rch);
 CS4231_LOCK(sc);
 v = cs4231_read(sc, CS_PIN_CONTROL) & ~INTERRUPT_ENABLE;
 cs4231_write(sc, CS_PIN_CONTROL, v);

 if ((sc->sc_flags & CS4231_SBUS) != 0) {
  APC_WRITE(sc, APC_CSR, APC_CSR_RESET);
  DELAY(10);
  APC_WRITE(sc, APC_CSR, 0);
  DELAY(10);
 } else
  cs4231_ebdma_reset(sc);
}
