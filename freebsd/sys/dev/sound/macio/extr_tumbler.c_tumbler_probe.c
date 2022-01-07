
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 scalar_t__ TUMBLER_IICADDR ;
 int device_set_desc (int ,char*) ;
 scalar_t__ iicbus_get_addr (int ) ;
 char* ofw_bus_get_name (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
tumbler_probe(device_t dev)
{
 const char *name;

 name = ofw_bus_get_name(dev);
 if (name == ((void*)0))
  return (ENXIO);

 if (strcmp(name, "deq") == 0 && iicbus_get_addr(dev) ==
     TUMBLER_IICADDR) {
  device_set_desc(dev, "Texas Instruments TAS3001 Audio Codec");
  return (0);
 }

 return (ENXIO);
}
