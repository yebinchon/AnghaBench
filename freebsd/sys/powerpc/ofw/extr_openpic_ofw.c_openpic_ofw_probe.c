
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle_t ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ OF_finddevice (char*) ;
 int OPENPIC_DEVSTR ;
 int device_set_desc (int ,int ) ;
 char* ofw_bus_get_type (int ) ;
 int ofw_bus_is_compatible (int ,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
openpic_ofw_probe(device_t dev)
{
 const char *type = ofw_bus_get_type(dev);

 if (type == ((void*)0))
                return (ENXIO);

 if (!ofw_bus_is_compatible(dev, "chrp,open-pic") &&
     strcmp(type, "open-pic") != 0)
                return (ENXIO);





 if (OF_finddevice("/u4") != (phandle_t)-1)
  return (ENXIO);

 device_set_desc(dev, OPENPIC_DEVSTR);
 return (0);
}
