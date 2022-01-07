
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* sc_hub_idata; int sc_bus; int sc_root_intr; } ;
typedef TYPE_1__ uhci_softc_t ;


 int DPRINTFN (int,char*) ;
 int MA_OWNED ;
 int UHCI_PORTSC1 ;
 int UHCI_PORTSC2 ;
 int UHCI_PORTSC_CSC ;
 int UHCI_PORTSC_OCIC ;
 int UHCI_PORTSC_RD ;
 int UREAD2 (TYPE_1__*,int ) ;
 int USB_BUS_LOCK_ASSERT (int *,int ) ;
 int hz ;
 int uhub_root_intr (int *,int*,int) ;
 int usb_callout_reset (int *,int ,void*,TYPE_1__*) ;

__attribute__((used)) static void
uhci_root_intr(uhci_softc_t *sc)
{
 DPRINTFN(21, "\n");

 USB_BUS_LOCK_ASSERT(&sc->sc_bus, MA_OWNED);

 sc->sc_hub_idata[0] = 0;

 if (UREAD2(sc, UHCI_PORTSC1) & (UHCI_PORTSC_CSC |
     UHCI_PORTSC_OCIC | UHCI_PORTSC_RD)) {
  sc->sc_hub_idata[0] |= 1 << 1;
 }
 if (UREAD2(sc, UHCI_PORTSC2) & (UHCI_PORTSC_CSC |
     UHCI_PORTSC_OCIC | UHCI_PORTSC_RD)) {
  sc->sc_hub_idata[0] |= 1 << 2;
 }


 usb_callout_reset(&sc->sc_root_intr, hz,
     (void *)&uhci_root_intr, sc);

 if (sc->sc_hub_idata[0] != 0) {
  uhub_root_intr(&sc->sc_bus, sc->sc_hub_idata,
      sizeof(sc->sc_hub_idata));
 }
}
