
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sc_eintrs; int sc_bus; } ;
typedef TYPE_1__ ohci_softc_t ;


 int DPRINTFN (int,char*) ;
 int MA_OWNED ;
 int OHCI_INTERRUPT_ENABLE ;
 int OHCI_INTERRUPT_STATUS ;
 int OHCI_RHSC ;
 int OWRITE4 (TYPE_1__*,int ,int ) ;
 int USB_BUS_LOCK_ASSERT (int *,int ) ;
 int ohci_root_intr (TYPE_1__*) ;

__attribute__((used)) static void
ohci_rhsc_enable(ohci_softc_t *sc)
{
 DPRINTFN(5, "\n");

 USB_BUS_LOCK_ASSERT(&sc->sc_bus, MA_OWNED);

 sc->sc_eintrs |= OHCI_RHSC;
 OWRITE4(sc, OHCI_INTERRUPT_ENABLE, OHCI_RHSC);


 OWRITE4(sc, OHCI_INTERRUPT_STATUS, OHCI_RHSC);

 ohci_root_intr(sc);
}
