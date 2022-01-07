
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int change_connect; scalar_t__ change_suspend; scalar_t__ status_suspend; scalar_t__ status_bus_reset; scalar_t__ status_vbus; scalar_t__ port_powered; } ;
struct saf1761_otg_softc {int sc_bus; TYPE_1__ sc_flags; } ;


 int SAF1761_WRITE_LE_4 (struct saf1761_otg_softc*,int ,int ) ;
 int SOTG_MODE ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int saf1761_otg_pull_down (struct saf1761_otg_softc*) ;

void
saf1761_otg_uninit(struct saf1761_otg_softc *sc)
{
 USB_BUS_LOCK(&sc->sc_bus);


 SAF1761_WRITE_LE_4(sc, SOTG_MODE, 0);

 sc->sc_flags.port_powered = 0;
 sc->sc_flags.status_vbus = 0;
 sc->sc_flags.status_bus_reset = 0;
 sc->sc_flags.status_suspend = 0;
 sc->sc_flags.change_suspend = 0;
 sc->sc_flags.change_connect = 1;

 saf1761_otg_pull_down(sc);
 USB_BUS_UNLOCK(&sc->sc_bus);
}
