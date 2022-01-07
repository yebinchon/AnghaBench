
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_enumerate_hinted_children (int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int gpiobus_init_softc (int ) ;

__attribute__((used)) static int
gpiobus_attach(device_t dev)
{
 int err;

 err = gpiobus_init_softc(dev);
 if (err != 0)
  return (err);




 bus_generic_probe(dev);
 bus_enumerate_hinted_children(dev);

 return (bus_generic_attach(dev));
}
