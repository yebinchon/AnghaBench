
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 scalar_t__ OF_getproplen (int ,char*) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 char* ofw_bus_get_type (int ) ;
 int rtas_exists () ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
rtaspci_probe(device_t dev)
{
 const char *type;

 if (!rtas_exists())
  return (ENXIO);

 type = ofw_bus_get_type(dev);

 if (OF_getproplen(ofw_bus_get_node(dev), "used-by-rtas") < 0)
  return (ENXIO);
 if (type == ((void*)0) || strcmp(type, "pci") != 0)
  return (ENXIO);

 device_set_desc(dev, "RTAS Host-PCI bridge");
 return (BUS_PROBE_GENERIC);
}
