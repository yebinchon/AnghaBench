
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint8_t ;
struct TYPE_5__ {int bus_mtx; int * methods; int usbrev; } ;
struct avr32dci_softc {TYPE_1__ sc_bus; int (* sc_clocks_on ) (TYPE_1__*) ;} ;


 int AVR32_CTRL_DEV_DETACH ;
 int AVR32_CTRL_DEV_EN_USBA ;
 int AVR32_EPTCTLDIS (int) ;
 int AVR32_EPTCTL_EPT_ENABL ;
 int AVR32_EPTRST ;
 int AVR32_EP_MAX ;
 int AVR32_INT_DET_SUSPD ;
 int AVR32_INT_ENDRESET ;
 int AVR32_WRITE_4 (struct avr32dci_softc*,int ,int) ;
 int DPRINTF (char*) ;
 int USB_BUS_LOCK (TYPE_1__*) ;
 int USB_BUS_UNLOCK (TYPE_1__*) ;
 int USB_REV_1_1 ;
 int avr32dci_bus_methods ;
 int avr32dci_clocks_off (struct avr32dci_softc*) ;
 int avr32dci_do_poll (TYPE_1__*) ;
 int avr32dci_mod_ctrl (struct avr32dci_softc*,int ,int ) ;
 int avr32dci_mod_ien (struct avr32dci_softc*,int,int) ;
 int hz ;
 int stub1 (TYPE_1__*) ;
 int usb_pause_mtx (int *,int) ;

usb_error_t
avr32dci_init(struct avr32dci_softc *sc)
{
 uint8_t n;

 DPRINTF("start\n");


 sc->sc_bus.usbrev = USB_REV_1_1;
 sc->sc_bus.methods = &avr32dci_bus_methods;

 USB_BUS_LOCK(&sc->sc_bus);


 avr32dci_mod_ctrl(sc, AVR32_CTRL_DEV_EN_USBA, 0);


 (sc->sc_clocks_on) (&sc->sc_bus);


 avr32dci_mod_ctrl(sc, AVR32_CTRL_DEV_DETACH, 0);


 usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 20);


 avr32dci_mod_ien(sc, 0, 0xFFFFFFFF);


 avr32dci_mod_ien(sc, AVR32_INT_DET_SUSPD |
     AVR32_INT_ENDRESET, 0);


 AVR32_WRITE_4(sc, AVR32_EPTRST, (1 << AVR32_EP_MAX) - 1);


 for (n = 0; n != AVR32_EP_MAX; n++) {

  AVR32_WRITE_4(sc, AVR32_EPTCTLDIS(n), AVR32_EPTCTL_EPT_ENABL);
 }



 avr32dci_clocks_off(sc);

 USB_BUS_UNLOCK(&sc->sc_bus);



 avr32dci_do_poll(&sc->sc_bus);

 return (0);
}
