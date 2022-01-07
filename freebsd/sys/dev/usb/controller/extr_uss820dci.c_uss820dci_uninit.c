
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int change_connect; scalar_t__ change_suspend; scalar_t__ status_suspend; scalar_t__ status_bus_reset; scalar_t__ status_vbus; scalar_t__ port_powered; } ;
struct uss820dci_softc {int sc_bus; TYPE_1__ sc_flags; } ;


 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int USS820_READ_1 (struct uss820dci_softc*,int ) ;
 int USS820_SCR ;
 int USS820_SCR_T_IRQ ;
 int USS820_WRITE_1 (struct uss820dci_softc*,int ,int ) ;
 int uss820dci_pull_down (struct uss820dci_softc*) ;

void
uss820dci_uninit(struct uss820dci_softc *sc)
{
 uint8_t temp;

 USB_BUS_LOCK(&sc->sc_bus);


 temp = USS820_READ_1(sc, USS820_SCR);
 temp &= ~USS820_SCR_T_IRQ;
 USS820_WRITE_1(sc, USS820_SCR, temp);

 sc->sc_flags.port_powered = 0;
 sc->sc_flags.status_vbus = 0;
 sc->sc_flags.status_bus_reset = 0;
 sc->sc_flags.status_suspend = 0;
 sc->sc_flags.change_suspend = 0;
 sc->sc_flags.change_connect = 1;

 uss820dci_pull_down(sc);
 USB_BUS_UNLOCK(&sc->sc_bus);
}
