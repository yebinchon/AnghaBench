
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int change_connect; scalar_t__ change_suspend; scalar_t__ status_suspend; scalar_t__ status_bus_reset; scalar_t__ status_vbus; scalar_t__ port_powered; scalar_t__ port_enabled; } ;
struct dwc_otg_softc {int sc_timer; int sc_bus; TYPE_1__ sc_flags; } ;


 int DCTL_SFTDISCON ;
 int DOTG_DCTL ;
 int DOTG_GAHBCFG ;
 int DWC_OTG_WRITE_4 (struct dwc_otg_softc*,int ,int ) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int dwc_otg_clocks_off (struct dwc_otg_softc*) ;
 int dwc_otg_pull_down (struct dwc_otg_softc*) ;
 int dwc_otg_timer_stop (struct dwc_otg_softc*) ;
 int usb_callout_drain (int *) ;

void
dwc_otg_uninit(struct dwc_otg_softc *sc)
{
 USB_BUS_LOCK(&sc->sc_bus);


 dwc_otg_timer_stop(sc);


 DWC_OTG_WRITE_4(sc, DOTG_DCTL,
     DCTL_SFTDISCON);


 DWC_OTG_WRITE_4(sc, DOTG_GAHBCFG, 0);

 sc->sc_flags.port_enabled = 0;
 sc->sc_flags.port_powered = 0;
 sc->sc_flags.status_vbus = 0;
 sc->sc_flags.status_bus_reset = 0;
 sc->sc_flags.status_suspend = 0;
 sc->sc_flags.change_suspend = 0;
 sc->sc_flags.change_connect = 1;

 dwc_otg_pull_down(sc);
 dwc_otg_clocks_off(sc);

 USB_BUS_UNLOCK(&sc->sc_bus);

 usb_callout_drain(&sc->sc_timer);
}
