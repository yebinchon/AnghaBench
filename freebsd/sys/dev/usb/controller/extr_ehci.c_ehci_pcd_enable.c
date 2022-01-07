
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sc_eintrs; int sc_bus; } ;
typedef TYPE_1__ ehci_softc_t ;


 int EHCI_STS_PCD ;
 int EHCI_USBINTR ;
 int EHCI_USBSTS ;
 int EOWRITE4 (TYPE_1__*,int ,int ) ;
 int MA_OWNED ;
 int USB_BUS_LOCK_ASSERT (int *,int ) ;
 int ehci_root_intr (TYPE_1__*) ;

__attribute__((used)) static void
ehci_pcd_enable(ehci_softc_t *sc)
{
 USB_BUS_LOCK_ASSERT(&sc->sc_bus, MA_OWNED);

 sc->sc_eintrs |= EHCI_STS_PCD;
 EOWRITE4(sc, EHCI_USBINTR, sc->sc_eintrs);


 EOWRITE4(sc, EHCI_USBSTS, EHCI_STS_PCD);

 ehci_root_intr(sc);
}
