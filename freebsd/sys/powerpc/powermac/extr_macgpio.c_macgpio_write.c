
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct macgpio_softc {int sc_gpios; } ;
struct macgpio_devinfo {scalar_t__ gpio_num; } ;
typedef int device_t ;


 int bus_write_1 (int ,scalar_t__,int ) ;
 struct macgpio_devinfo* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 struct macgpio_softc* device_get_softc (int ) ;

void
macgpio_write(device_t dev, uint8_t val)
{
 struct macgpio_softc *sc;
 struct macgpio_devinfo *dinfo;

 sc = device_get_softc(device_get_parent(dev));
 dinfo = device_get_ivars(dev);

 if (dinfo->gpio_num < 0)
  return;

 bus_write_1(sc->sc_gpios,dinfo->gpio_num,val);
}
