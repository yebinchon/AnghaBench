
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_bus {int dummy; } ;
struct atmegadci_softc {int dummy; } ;


 struct atmegadci_softc* ATMEGA_BUS2SC (struct usb_bus*) ;



 int atmegadci_resume (struct atmegadci_softc*) ;
 int atmegadci_suspend (struct atmegadci_softc*) ;
 int atmegadci_uninit (struct atmegadci_softc*) ;

__attribute__((used)) static void
atmegadci_set_hw_power_sleep(struct usb_bus *bus, uint32_t state)
{
 struct atmegadci_softc *sc = ATMEGA_BUS2SC(bus);

 switch (state) {
 case 128:
  atmegadci_suspend(sc);
  break;
 case 129:
  atmegadci_uninit(sc);
  break;
 case 130:
  atmegadci_resume(sc);
  break;
 default:
  break;
 }
}
