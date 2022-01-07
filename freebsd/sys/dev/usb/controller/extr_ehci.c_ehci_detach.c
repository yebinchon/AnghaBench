
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sc_tmo_poll; int sc_tmo_pcd; int sc_bus; } ;
typedef TYPE_1__ ehci_softc_t ;


 int DPRINTF (char*) ;
 int EHCI_USBINTR ;
 int EOWRITE4 (TYPE_1__*,int ,int ) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 scalar_t__ ehci_hcreset (TYPE_1__*) ;
 int hz ;
 int usb_callout_drain (int *) ;
 int usb_callout_stop (int *) ;
 int usb_pause_mtx (int *,int) ;

void
ehci_detach(ehci_softc_t *sc)
{
 USB_BUS_LOCK(&sc->sc_bus);

 usb_callout_stop(&sc->sc_tmo_pcd);
 usb_callout_stop(&sc->sc_tmo_poll);

 EOWRITE4(sc, EHCI_USBINTR, 0);
 USB_BUS_UNLOCK(&sc->sc_bus);

 if (ehci_hcreset(sc)) {
  DPRINTF("reset failed!\n");
 }


 usb_pause_mtx(((void*)0), hz / 20);

 usb_callout_drain(&sc->sc_tmo_pcd);
 usb_callout_drain(&sc->sc_tmo_poll);
}
