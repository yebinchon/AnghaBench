
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct resource {int dummy; } ;
struct macgpio_softc {int sc_gpios; } ;
struct macgpio_devinfo {scalar_t__ gpio_num; } ;
typedef int device_t ;


 int ENXIO ;
 int SYS_RES_IRQ ;
 int bus_activate_resource (int ,int,int,struct resource*) ;
 int bus_read_1 (int ,scalar_t__) ;
 int bus_write_1 (int ,scalar_t__,int) ;
 struct macgpio_devinfo* device_get_ivars (int ) ;
 struct macgpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
macgpio_activate_resource(device_t bus, device_t child, int type, int rid,
      struct resource *res)
{
 struct macgpio_softc *sc;
 struct macgpio_devinfo *dinfo;
 u_char val;

 sc = device_get_softc(bus);
 dinfo = device_get_ivars(child);

 if (type != SYS_RES_IRQ)
  return ENXIO;

 if (dinfo->gpio_num >= 0) {
  val = bus_read_1(sc->sc_gpios,dinfo->gpio_num);
  val |= 0x80;
  bus_write_1(sc->sc_gpios,dinfo->gpio_num,val);
 }

 return (bus_activate_resource(bus, type, rid, res));
}
