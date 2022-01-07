
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int status_bus_reset; int status_suspend; int change_suspend; int change_connect; } ;
struct atmegadci_softc {int sc_bus; TYPE_1__ sc_flags; } ;


 int ATMEGA_READ_1 (struct atmegadci_softc*,int ) ;
 int ATMEGA_UDIEN ;
 int ATMEGA_UDINT ;
 int ATMEGA_UDINT_EORSTE ;
 int ATMEGA_UDINT_EORSTI ;
 int ATMEGA_UDINT_SUSPE ;
 int ATMEGA_UDINT_SUSPI ;
 int ATMEGA_UDINT_WAKEUPE ;
 int ATMEGA_UDINT_WAKEUPI ;
 int ATMEGA_UEINT ;
 int ATMEGA_USBINT ;
 int ATMEGA_USBINT_VBUSTI ;
 int ATMEGA_USBSTA ;
 int ATMEGA_USBSTA_VBUS ;
 int ATMEGA_WRITE_1 (struct atmegadci_softc*,int ,int) ;
 int DPRINTFN (int,char*,...) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int atmegadci_interrupt_poll (struct atmegadci_softc*) ;
 int atmegadci_root_intr (struct atmegadci_softc*) ;
 int atmegadci_vbus_interrupt (struct atmegadci_softc*,int) ;

void
atmegadci_interrupt(struct atmegadci_softc *sc)
{
 uint8_t status;

 USB_BUS_LOCK(&sc->sc_bus);


 status = ATMEGA_READ_1(sc, ATMEGA_UDINT);


 ATMEGA_WRITE_1(sc, ATMEGA_UDINT, (~status) & 0x7D);

 DPRINTFN(14, "UDINT=0x%02x\n", status);


 if (status & ATMEGA_UDINT_EORSTI) {

  DPRINTFN(5, "end of reset\n");


  sc->sc_flags.status_bus_reset = 1;
  sc->sc_flags.status_suspend = 0;
  sc->sc_flags.change_suspend = 0;
  sc->sc_flags.change_connect = 1;


  ATMEGA_WRITE_1(sc, ATMEGA_UDIEN,
      ATMEGA_UDINT_SUSPE |
      ATMEGA_UDINT_EORSTE);


  atmegadci_root_intr(sc);
 }





 if (status & ATMEGA_UDINT_WAKEUPI) {

  DPRINTFN(5, "resume interrupt\n");

  if (sc->sc_flags.status_suspend) {

   sc->sc_flags.status_suspend = 0;
   sc->sc_flags.change_suspend = 1;


   ATMEGA_WRITE_1(sc, ATMEGA_UDIEN,
       ATMEGA_UDINT_SUSPE |
       ATMEGA_UDINT_EORSTE);


   atmegadci_root_intr(sc);
  }
 } else if (status & ATMEGA_UDINT_SUSPI) {

  DPRINTFN(5, "suspend interrupt\n");

  if (!sc->sc_flags.status_suspend) {

   sc->sc_flags.status_suspend = 1;
   sc->sc_flags.change_suspend = 1;


   ATMEGA_WRITE_1(sc, ATMEGA_UDIEN,
       ATMEGA_UDINT_WAKEUPE |
       ATMEGA_UDINT_EORSTE);


   atmegadci_root_intr(sc);
  }
 }

 status = ATMEGA_READ_1(sc, ATMEGA_USBINT);


 ATMEGA_WRITE_1(sc, ATMEGA_USBINT, (~status) & 0x03);

 if (status & ATMEGA_USBINT_VBUSTI) {
  uint8_t temp;

  DPRINTFN(5, "USBINT=0x%02x\n", status);

  temp = ATMEGA_READ_1(sc, ATMEGA_USBSTA);
  atmegadci_vbus_interrupt(sc, temp & ATMEGA_USBSTA_VBUS);
 }

 status = ATMEGA_READ_1(sc, ATMEGA_UEINT);

 if (status) {

  DPRINTFN(5, "real endpoint interrupt UEINT=0x%02x\n", status);

  atmegadci_interrupt_poll(sc);
 }
 USB_BUS_UNLOCK(&sc->sc_bus);
}
