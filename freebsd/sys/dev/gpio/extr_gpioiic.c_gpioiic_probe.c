
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiobus_ivar {scalar_t__ npins; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 struct gpiobus_ivar* GPIOBUS_IVAR (int ) ;
 scalar_t__ GPIOIIC_MIN_PINS ;
 int device_printf (int ,char*,scalar_t__,scalar_t__) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
gpioiic_probe(device_t dev)
{
 struct gpiobus_ivar *devi;







 devi = GPIOBUS_IVAR(dev);
 if (devi->npins < GPIOIIC_MIN_PINS) {
  device_printf(dev,
      "gpioiic needs at least %d GPIO pins (only %d given).\n",
      GPIOIIC_MIN_PINS, devi->npins);
  return (ENXIO);
 }
 device_set_desc(dev, "GPIO I2C bit-banging driver");

 return (BUS_PROBE_DEFAULT);
}
