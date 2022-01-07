
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint8_t ;
struct TYPE_5__ {int bus_mtx; int * methods; int usbrev; } ;
struct atmegadci_softc {TYPE_1__ sc_bus; int (* sc_clocks_on ) (TYPE_1__*) ;} ;


 int ATMEGA_EP_MAX ;
 int ATMEGA_READ_1 (struct atmegadci_softc*,int) ;
 int ATMEGA_UDCON ;
 int ATMEGA_UDCON_DETACH ;
 int ATMEGA_UDIEN ;
 int ATMEGA_UDINT_EORSTE ;
 int ATMEGA_UDINT_SUSPE ;
 int ATMEGA_UECONX ;
 int ATMEGA_UEIENX ;
 int ATMEGA_UENUM ;
 int ATMEGA_UERST ;
 int ATMEGA_UHWCON ;
 int ATMEGA_UHWCON_UIMOD ;
 int ATMEGA_UHWCON_UVREGE ;
 int ATMEGA_USBCON ;
 int ATMEGA_USBCON_FRZCLK ;
 int ATMEGA_USBCON_OTGPADE ;
 int ATMEGA_USBCON_USBE ;
 int ATMEGA_USBCON_VBUSTE ;
 int ATMEGA_USBSTA ;
 int ATMEGA_USBSTA_VBUS ;
 int ATMEGA_WRITE_1 (struct atmegadci_softc*,int,int) ;
 int DPRINTF (char*) ;
 int USB_BUS_LOCK (TYPE_1__*) ;
 int USB_BUS_UNLOCK (TYPE_1__*) ;
 int USB_REV_1_1 ;
 int atmegadci_bus_methods ;
 int atmegadci_clocks_off (struct atmegadci_softc*) ;
 int atmegadci_do_poll (TYPE_1__*) ;
 int atmegadci_vbus_interrupt (struct atmegadci_softc*,int) ;
 int hz ;
 int stub1 (TYPE_1__*) ;
 int usb_pause_mtx (int *,int) ;

usb_error_t
atmegadci_init(struct atmegadci_softc *sc)
{
 uint8_t n;

 DPRINTF("start\n");


 sc->sc_bus.usbrev = USB_REV_1_1;
 sc->sc_bus.methods = &atmegadci_bus_methods;

 USB_BUS_LOCK(&sc->sc_bus);


 ATMEGA_WRITE_1(sc, ATMEGA_USBCON,
     ATMEGA_USBCON_USBE |
     ATMEGA_USBCON_FRZCLK);


 ATMEGA_WRITE_1(sc, ATMEGA_UHWCON,
     ATMEGA_UHWCON_UVREGE |
     ATMEGA_UHWCON_UIMOD);


 ATMEGA_WRITE_1(sc, 0x49 , 0x14 | 0x02);


 for (n = 0; n != 20; n++) {
  if (ATMEGA_READ_1(sc, 0x49) & 0x01)
   break;

  usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 100);
 }


 ATMEGA_WRITE_1(sc, ATMEGA_USBCON,
     ATMEGA_USBCON_USBE |
     ATMEGA_USBCON_OTGPADE |
     ATMEGA_USBCON_VBUSTE);


 (sc->sc_clocks_on) (&sc->sc_bus);


 ATMEGA_WRITE_1(sc, ATMEGA_UDCON, ATMEGA_UDCON_DETACH);


 usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 20);


 ATMEGA_WRITE_1(sc, ATMEGA_UDIEN,
     ATMEGA_UDINT_SUSPE |
     ATMEGA_UDINT_EORSTE);


 ATMEGA_WRITE_1(sc, ATMEGA_UERST,
     (1 << ATMEGA_EP_MAX) - 1);


 ATMEGA_WRITE_1(sc, ATMEGA_UERST, 0);


 for (n = 0; n != ATMEGA_EP_MAX; n++) {


  ATMEGA_WRITE_1(sc, ATMEGA_UENUM, n);


  ATMEGA_WRITE_1(sc, ATMEGA_UEIENX, 0);


  ATMEGA_WRITE_1(sc, ATMEGA_UECONX, 0);
 }



 atmegadci_clocks_off(sc);



 n = ATMEGA_READ_1(sc, ATMEGA_USBSTA);
 atmegadci_vbus_interrupt(sc, n & ATMEGA_USBSTA_VBUS);

 USB_BUS_UNLOCK(&sc->sc_bus);



 atmegadci_do_poll(&sc->sc_bus);

 return (0);
}
