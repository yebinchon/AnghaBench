
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_name (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
eeprom_probe(device_t dev)
{
 const char *name;

 name = ofw_bus_get_name(dev);
 if (strcmp(name, "eeprom") == 0 ||
     strcmp(name, "FJSV,eeprom") == 0) {
  device_set_desc(dev, "EEPROM/clock");
  return (0);
 }
 return (ENXIO);
}
