
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubser_softc {scalar_t__ sc_curr_tx_unit; scalar_t__ sc_numser; } ;



__attribute__((used)) static __inline void
ubser_inc_tx_unit(struct ubser_softc *sc)
{
 sc->sc_curr_tx_unit++;
 if (sc->sc_curr_tx_unit >= sc->sc_numser) {
  sc->sc_curr_tx_unit = 0;
 }
}
