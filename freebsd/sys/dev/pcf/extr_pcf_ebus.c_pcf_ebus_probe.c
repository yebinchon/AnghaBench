
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_compat (int ) ;
 char const* ofw_bus_get_name (int ) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int
pcf_ebus_probe(device_t dev)
{
 const char *compat;






 if (strcmp("i2c", ofw_bus_get_name(dev)) == 0) {
  compat = ofw_bus_get_compat(dev);
  if (compat != ((void*)0) && strcmp("i2cpcf,8584", compat) == 0) {
   device_set_desc(dev, "PCF8584 I2C bus controller");
   return (0);
  }
 }
 return (ENXIO);
}
