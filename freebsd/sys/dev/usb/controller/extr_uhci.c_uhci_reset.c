
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_11__ {int bdev; int bus_mtx; } ;
struct TYPE_10__ {TYPE_5__ sc_bus; int sc_root_intr; } ;
typedef TYPE_1__ uhci_softc_t ;


 int DPRINTF (char*) ;
 int MA_OWNED ;
 int UHCICMD (TYPE_1__*,int) ;
 int UHCI_CMD ;
 int UHCI_CMD_GRESET ;
 int UHCI_CMD_HCRESET ;
 int UHCI_FRNUM ;
 int UHCI_INTR ;
 int UHCI_RESET_TIMEOUT ;
 int UHCI_SOF ;
 int UHCI_STS ;
 int UHCI_STS_HCH ;
 int UREAD2 (TYPE_1__*,int ) ;
 int USB_BUS_LOCK (TYPE_5__*) ;
 int USB_BUS_LOCK_ASSERT (TYPE_5__*,int ) ;
 int USB_BUS_RESET_DELAY ;
 int USB_BUS_UNLOCK (TYPE_5__*) ;
 int USB_MS_TO_TICKS (int ) ;
 int UWRITE1 (TYPE_1__*,int ,int) ;
 int UWRITE2 (TYPE_1__*,int ,int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int usb_callout_drain (int *) ;
 int usb_pause_mtx (int *,int) ;

void
uhci_reset(uhci_softc_t *sc)
{
 uint16_t n;

 USB_BUS_LOCK_ASSERT(&sc->sc_bus, MA_OWNED);

 DPRINTF("resetting the HC\n");



 UWRITE2(sc, UHCI_INTR, 0);



 UHCICMD(sc, UHCI_CMD_GRESET);



 usb_pause_mtx(&sc->sc_bus.bus_mtx,
     USB_MS_TO_TICKS(USB_BUS_RESET_DELAY));



 UHCICMD(sc, UHCI_CMD_HCRESET);



 n = UHCI_RESET_TIMEOUT;
 while (n--) {


  usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 1000);

  if (!(UREAD2(sc, UHCI_CMD) & UHCI_CMD_HCRESET)) {
   goto done_1;
  }
 }

 device_printf(sc->sc_bus.bdev,
     "controller did not reset\n");

done_1:

 n = 10;
 while (n--) {


  usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 1000);


  if (UREAD2(sc, UHCI_STS) & UHCI_STS_HCH) {
   goto done_2;
  }
 }

 device_printf(sc->sc_bus.bdev,
     "controller did not stop\n");

done_2:


 UWRITE2(sc, UHCI_FRNUM, 0);

 UWRITE1(sc, UHCI_SOF, 0x40);

 USB_BUS_UNLOCK(&sc->sc_bus);


 usb_callout_drain(&sc->sc_root_intr);

 USB_BUS_LOCK(&sc->sc_bus);
}
