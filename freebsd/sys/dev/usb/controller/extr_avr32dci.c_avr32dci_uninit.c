
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int change_connect; scalar_t__ change_suspend; scalar_t__ status_suspend; scalar_t__ status_bus_reset; scalar_t__ status_vbus; scalar_t__ port_powered; } ;
struct avr32dci_softc {int sc_bus; TYPE_1__ sc_flags; int (* sc_clocks_on ) (int *) ;} ;


 int AVR32_EPTCTLDIS (int) ;
 int AVR32_EPTCTL_EPT_ENABL ;
 int AVR32_EPTRST ;
 int AVR32_EP_MAX ;
 int AVR32_WRITE_4 (struct avr32dci_softc*,int ,int) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int avr32dci_clocks_off (struct avr32dci_softc*) ;
 int avr32dci_mod_ien (struct avr32dci_softc*,int ,int) ;
 int avr32dci_pull_down (struct avr32dci_softc*) ;
 int stub1 (int *) ;

void
avr32dci_uninit(struct avr32dci_softc *sc)
{
 uint8_t n;

 USB_BUS_LOCK(&sc->sc_bus);


 (sc->sc_clocks_on) (&sc->sc_bus);


 avr32dci_mod_ien(sc, 0, 0xFFFFFFFF);


 AVR32_WRITE_4(sc, AVR32_EPTRST, (1 << AVR32_EP_MAX) - 1);


 for (n = 0; n != AVR32_EP_MAX; n++) {

  AVR32_WRITE_4(sc, AVR32_EPTCTLDIS(n), AVR32_EPTCTL_EPT_ENABL);
 }

 sc->sc_flags.port_powered = 0;
 sc->sc_flags.status_vbus = 0;
 sc->sc_flags.status_bus_reset = 0;
 sc->sc_flags.status_suspend = 0;
 sc->sc_flags.change_suspend = 0;
 sc->sc_flags.change_connect = 1;

 avr32dci_pull_down(sc);
 avr32dci_clocks_off(sc);

 USB_BUS_UNLOCK(&sc->sc_bus);
}
