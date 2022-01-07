
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_softc {int sc_tmo_rhsc; int sc_bus; } ;


 int OHCI_ALL_INTRS ;
 int OHCI_CONTROL ;
 int OHCI_HCFS_RESET ;
 int OHCI_INTERRUPT_DISABLE ;
 int OWRITE4 (struct ohci_softc*,int ,int ) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int hz ;
 int usb_callout_drain (int *) ;
 int usb_callout_stop (int *) ;
 int usb_pause_mtx (int *,int) ;

void
ohci_detach(struct ohci_softc *sc)
{
 USB_BUS_LOCK(&sc->sc_bus);

 usb_callout_stop(&sc->sc_tmo_rhsc);

 OWRITE4(sc, OHCI_INTERRUPT_DISABLE, OHCI_ALL_INTRS);
 OWRITE4(sc, OHCI_CONTROL, OHCI_HCFS_RESET);

 USB_BUS_UNLOCK(&sc->sc_bus);


 usb_pause_mtx(((void*)0), hz / 20);

 usb_callout_drain(&sc->sc_tmo_rhsc);
}
