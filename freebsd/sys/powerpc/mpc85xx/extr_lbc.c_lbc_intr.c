
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lbc_softc {int sc_dev; int sc_bsh; int sc_bst; int sc_ltesr; } ;


 int LBC85XX_LTESR ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int ) ;
 int wakeup (int ) ;

__attribute__((used)) static void
lbc_intr(void *arg)
{
 struct lbc_softc *sc = arg;
 uint32_t ltesr;

 ltesr = bus_space_read_4(sc->sc_bst, sc->sc_bsh, LBC85XX_LTESR);
 sc->sc_ltesr = ltesr;
 bus_space_write_4(sc->sc_bst, sc->sc_bsh, LBC85XX_LTESR, ltesr);
 wakeup(sc->sc_dev);
}
