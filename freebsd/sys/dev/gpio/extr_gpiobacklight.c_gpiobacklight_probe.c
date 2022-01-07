
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_is_compatible (int ,char*) ;

__attribute__((used)) static int
gpiobacklight_probe(device_t dev)
{

 if (!ofw_bus_is_compatible(dev, "gpio-backlight"))
  return (ENXIO);

 device_set_desc(dev, "GPIO backlight");

 return (0);
}
