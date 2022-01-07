
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpioiic_softc {int scl_pin; int sda_pin; int sc_busdev; int sc_dev; } ;
struct gpiobus_ivar {int * pins; } ;
typedef int pin ;
typedef int phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int device_t ;


 int ENXIO ;
 struct gpiobus_ivar* GPIOBUS_IVAR (int ) ;
 void* GPIOIIC_SCL_DFLT ;
 void* GPIOIIC_SDA_DFLT ;
 scalar_t__ OF_getencprop (int,char*,scalar_t__*,int) ;
 int device_add_child (int ,char*,int) ;
 int device_get_name (int ) ;
 int device_get_parent (int ) ;
 struct gpioiic_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,int ,int ) ;
 int device_probe_and_attach (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;

__attribute__((used)) static int
gpioiic_attach(device_t dev)
{
 device_t bitbang;




 struct gpiobus_ivar *devi;
 struct gpioiic_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_busdev = device_get_parent(dev);
 if (resource_int_value(device_get_name(dev),
  device_get_unit(dev), "scl", &sc->scl_pin))
  sc->scl_pin = GPIOIIC_SCL_DFLT;
 if (resource_int_value(device_get_name(dev),
  device_get_unit(dev), "sda", &sc->sda_pin))
  sc->sda_pin = GPIOIIC_SDA_DFLT;
 if (sc->scl_pin < 0 || sc->scl_pin > 1)
  sc->scl_pin = GPIOIIC_SCL_DFLT;
 if (sc->sda_pin < 0 || sc->sda_pin > 1)
  sc->sda_pin = GPIOIIC_SDA_DFLT;

 devi = GPIOBUS_IVAR(dev);
 device_printf(dev, "SCL pin: %d, SDA pin: %d\n",
     devi->pins[sc->scl_pin], devi->pins[sc->sda_pin]);


 bitbang = device_add_child(dev, "iicbb", -1);
 device_probe_and_attach(bitbang);

 return (0);
}
