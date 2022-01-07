
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int SC_DRIVER_NAME ;
 int SC_MD_FLAGS ;
 int SC_MD_MAX ;
 int device_get_flags (int ) ;
 int device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_get_name (int ) ;
 int sc_probe_unit (int,int) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
sc_probe(device_t dev)
{
 int unit;

 unit = device_get_unit(dev);
 if (strcmp(ofw_bus_get_name(dev), SC_DRIVER_NAME) != 0 ||
     unit >= SC_MD_MAX)
  return (ENXIO);

 device_set_desc(dev, "System console");
 return (sc_probe_unit(unit, device_get_flags(dev) | SC_MD_FLAGS));
}
