
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_bus {int dummy; } ;
struct musbotg_softc {int dummy; } ;


 struct musbotg_softc* MUSBOTG_BUS2SC (struct usb_bus*) ;



 int musbotg_init (struct musbotg_softc*) ;
 int musbotg_uninit (struct musbotg_softc*) ;

__attribute__((used)) static void
musbotg_set_hw_power_sleep(struct usb_bus *bus, uint32_t state)
{
 struct musbotg_softc *sc = MUSBOTG_BUS2SC(bus);

 switch (state) {
 case 128:
  musbotg_uninit(sc);
  break;
 case 129:
  musbotg_uninit(sc);
  break;
 case 130:
  musbotg_init(sc);
  break;
 default:
  break;
 }
}
