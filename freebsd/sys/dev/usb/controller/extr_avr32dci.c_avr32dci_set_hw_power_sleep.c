
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_bus {int dummy; } ;
struct avr32dci_softc {int dummy; } ;


 struct avr32dci_softc* AVR32_BUS2SC (struct usb_bus*) ;



 int avr32dci_resume (struct avr32dci_softc*) ;
 int avr32dci_suspend (struct avr32dci_softc*) ;
 int avr32dci_uninit (struct avr32dci_softc*) ;

__attribute__((used)) static void
avr32dci_set_hw_power_sleep(struct usb_bus *bus, uint32_t state)
{
 struct avr32dci_softc *sc = AVR32_BUS2SC(bus);

 switch (state) {
 case 128:
  avr32dci_suspend(sc);
  break;
 case 129:
  avr32dci_uninit(sc);
  break;
 case 130:
  avr32dci_resume(sc);
  break;
 default:
  break;
 }
}
