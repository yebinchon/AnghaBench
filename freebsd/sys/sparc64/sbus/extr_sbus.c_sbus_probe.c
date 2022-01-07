
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int OFW_SBUS_NAME ;
 int OFW_SBUS_TYPE ;
 int device_set_desc (int ,char*) ;
 char const* ofw_bus_get_name (int ) ;
 char* ofw_bus_get_type (int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
sbus_probe(device_t dev)
{
 const char *t;

 t = ofw_bus_get_type(dev);
 if (((t == ((void*)0) || strcmp(t, OFW_SBUS_TYPE) != 0)) &&
     strcmp(ofw_bus_get_name(dev), OFW_SBUS_NAME) != 0)
  return (ENXIO);
 device_set_desc(dev, "U2S UPA-SBus bridge");
 return (0);
}
