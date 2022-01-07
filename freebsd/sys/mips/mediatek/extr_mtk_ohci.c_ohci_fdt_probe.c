
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int OHCI_HC_DEVSTR ;
 int device_set_desc (int ,int ) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
ohci_fdt_probe(device_t self)
{

 if (!ofw_bus_status_okay(self))
  return (ENXIO);

 if (!ofw_bus_is_compatible(self, "generic-ohci"))
  return (ENXIO);

 device_set_desc(self, OHCI_HC_DEVSTR);

 return (BUS_PROBE_DEFAULT);
}
