
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int change_connect; scalar_t__ change_suspend; scalar_t__ status_suspend; scalar_t__ status_bus_reset; scalar_t__ status_vbus; scalar_t__ port_powered; } ;
struct atmegadci_softc {int sc_bus; TYPE_1__ sc_flags; int (* sc_clocks_on ) (int *) ;} ;


 int ATMEGA_EP_MAX ;
 int ATMEGA_UDIEN ;
 int ATMEGA_UERST ;
 int ATMEGA_UHWCON ;
 int ATMEGA_WRITE_1 (struct atmegadci_softc*,int ,int) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int atmegadci_clocks_off (struct atmegadci_softc*) ;
 int atmegadci_pull_down (struct atmegadci_softc*) ;
 int stub1 (int *) ;

void
atmegadci_uninit(struct atmegadci_softc *sc)
{
 USB_BUS_LOCK(&sc->sc_bus);


 (sc->sc_clocks_on) (&sc->sc_bus);


 ATMEGA_WRITE_1(sc, ATMEGA_UDIEN, 0);


 ATMEGA_WRITE_1(sc, ATMEGA_UERST,
     (1 << ATMEGA_EP_MAX) - 1);


 ATMEGA_WRITE_1(sc, ATMEGA_UERST, 0);

 sc->sc_flags.port_powered = 0;
 sc->sc_flags.status_vbus = 0;
 sc->sc_flags.status_bus_reset = 0;
 sc->sc_flags.status_suspend = 0;
 sc->sc_flags.change_suspend = 0;
 sc->sc_flags.change_connect = 1;

 atmegadci_pull_down(sc);
 atmegadci_clocks_off(sc);


 ATMEGA_WRITE_1(sc, ATMEGA_UHWCON, 0);

 USB_BUS_UNLOCK(&sc->sc_bus);
}
