
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;

__attribute__((used)) static int
gpiopower_probe(device_t dev)
{

 if (ofw_bus_is_compatible(dev, "gpio-poweroff")) {
  device_set_desc(dev, "GPIO poweroff control");
  return (0);
 } else if (ofw_bus_is_compatible(dev, "gpio-restart")) {
  device_set_desc(dev, "GPIO restart control");
  return (0);
 }

 return (ENXIO);
}
