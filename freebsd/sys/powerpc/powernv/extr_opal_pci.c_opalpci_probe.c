
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 int OF_hasprop (int ,char*) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 char* ofw_bus_get_type (int ) ;
 scalar_t__ opal_check () ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
opalpci_probe(device_t dev)
{
 const char *type;

 if (opal_check() != 0)
  return (ENXIO);

 type = ofw_bus_get_type(dev);

 if (type == ((void*)0) || (strcmp(type, "pci") != 0 &&
     strcmp(type, "pciex") != 0))
  return (ENXIO);

 if (!OF_hasprop(ofw_bus_get_node(dev), "ibm,opal-phbid"))
  return (ENXIO);

 device_set_desc(dev, "OPAL Host-PCI bridge");
 return (BUS_PROBE_GENERIC);
}
