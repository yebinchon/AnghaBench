
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ d_pulled_up; } ;
struct atmegadci_softc {TYPE_1__ sc_flags; } ;


 int ATMEGA_UDCON ;
 int ATMEGA_UDCON_DETACH ;
 int ATMEGA_WRITE_1 (struct atmegadci_softc*,int ,int ) ;

__attribute__((used)) static void
atmegadci_pull_down(struct atmegadci_softc *sc)
{


 if (sc->sc_flags.d_pulled_up) {
  sc->sc_flags.d_pulled_up = 0;
  ATMEGA_WRITE_1(sc, ATMEGA_UDCON, ATMEGA_UDCON_DETACH);
 }
}
