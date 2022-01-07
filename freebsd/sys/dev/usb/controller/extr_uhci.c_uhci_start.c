
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int bdev; } ;
struct TYPE_7__ {TYPE_6__ sc_bus; } ;
typedef TYPE_1__ uhci_softc_t ;


 int DPRINTFN (int,char*) ;
 int MA_OWNED ;
 int UHCI_INTR ;
 int UHCI_INTR_IOCE ;
 int UHCI_INTR_RIE ;
 int UHCI_INTR_SPIE ;
 int UHCI_INTR_TOCRCIE ;
 int USB_BUS_LOCK_ASSERT (TYPE_6__*,int ) ;
 int UWRITE2 (TYPE_1__*,int ,int) ;
 int device_printf (int ,char*) ;
 scalar_t__ uhci_restart (TYPE_1__*) ;
 int uhci_root_intr (TYPE_1__*) ;

__attribute__((used)) static void
uhci_start(uhci_softc_t *sc)
{
 USB_BUS_LOCK_ASSERT(&sc->sc_bus, MA_OWNED);

 DPRINTFN(2, "enabling\n");



 UWRITE2(sc, UHCI_INTR,
     (UHCI_INTR_TOCRCIE |
     UHCI_INTR_RIE |
     UHCI_INTR_IOCE |
     UHCI_INTR_SPIE));

 if (uhci_restart(sc)) {
  device_printf(sc->sc_bus.bdev,
      "cannot start HC controller\n");
 }


 uhci_root_intr(sc);
}
