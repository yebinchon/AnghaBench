
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct saf1761_otg_softc {int sc_intr_enable; } ;


 int SAF1761_WRITE_LE_4 (struct saf1761_otg_softc*,int ,int ) ;
 int SOTG_DCINTERRUPT_EN ;
 int SOTG_DCINTERRUPT_IERESM ;
 int SOTG_DCINTERRUPT_IESUSP ;

__attribute__((used)) static void
saf1761_otg_wait_suspend(struct saf1761_otg_softc *sc, uint8_t on)
{
 if (on) {
  sc->sc_intr_enable |= SOTG_DCINTERRUPT_IESUSP;
  sc->sc_intr_enable &= ~SOTG_DCINTERRUPT_IERESM;
 } else {
  sc->sc_intr_enable &= ~SOTG_DCINTERRUPT_IESUSP;
  sc->sc_intr_enable |= SOTG_DCINTERRUPT_IERESM;
 }
 SAF1761_WRITE_LE_4(sc, SOTG_DCINTERRUPT_EN, sc->sc_intr_enable);
}
