
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 scalar_t__ SNAPPER_IICADDR ;
 int device_set_desc (int ,char*) ;
 scalar_t__ iicbus_get_addr (int ) ;
 char* ofw_bus_get_compat (int ) ;
 char* ofw_bus_get_name (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
snapper_probe(device_t dev)
{
 const char *name, *compat;

 name = ofw_bus_get_name(dev);
 if (name == ((void*)0))
  return (ENXIO);

 if (strcmp(name, "deq") == 0) {
  if (iicbus_get_addr(dev) != SNAPPER_IICADDR)
   return (ENXIO);
 } else if (strcmp(name, "codec") == 0) {
  compat = ofw_bus_get_compat(dev);
  if (compat == ((void*)0) || strcmp(compat, "tas3004") != 0)
   return (ENXIO);
 } else {
  return (ENXIO);
 }

 device_set_desc(dev, "Texas Instruments TAS3004 Audio Codec");
 return (0);
}
