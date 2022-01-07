
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_bus {int dummy; } ;
struct octusb_softc {int dummy; } ;


 struct octusb_softc* OCTUSB_BUS2SC (struct usb_bus*) ;



 int octusb_resume (struct octusb_softc*) ;
 int octusb_suspend (struct octusb_softc*) ;
 int octusb_uninit (struct octusb_softc*) ;

__attribute__((used)) static void
octusb_set_hw_power_sleep(struct usb_bus *bus, uint32_t state)
{
 struct octusb_softc *sc = OCTUSB_BUS2SC(bus);

 switch (state) {
 case 128:
  octusb_suspend(sc);
  break;
 case 129:
  octusb_uninit(sc);
  break;
 case 130:
  octusb_resume(sc);
  break;
 default:
  break;
 }
}
