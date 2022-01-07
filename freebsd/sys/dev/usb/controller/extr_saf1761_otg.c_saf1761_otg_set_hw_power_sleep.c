
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_bus {int dummy; } ;
struct saf1761_otg_softc {int dummy; } ;


 struct saf1761_otg_softc* SAF1761_OTG_BUS2SC (struct usb_bus*) ;



 int saf1761_otg_resume (struct saf1761_otg_softc*) ;
 int saf1761_otg_suspend (struct saf1761_otg_softc*) ;
 int saf1761_otg_uninit (struct saf1761_otg_softc*) ;

__attribute__((used)) static void
saf1761_otg_set_hw_power_sleep(struct usb_bus *bus, uint32_t state)
{
 struct saf1761_otg_softc *sc = SAF1761_OTG_BUS2SC(bus);

 switch (state) {
 case 128:
  saf1761_otg_suspend(sc);
  break;
 case 129:
  saf1761_otg_uninit(sc);
  break;
 case 130:
  saf1761_otg_resume(sc);
  break;
 default:
  break;
 }
}
