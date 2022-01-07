
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 scalar_t__ PCIC_SERIALBUS ;
 scalar_t__ PCIS_SERIALBUS_IPMI ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_class (int ) ;
 scalar_t__ pci_get_subclass (int ) ;

__attribute__((used)) static int
ipmi2_pci_probe(device_t dev)
{

 if (pci_get_class(dev) == PCIC_SERIALBUS &&
     pci_get_subclass(dev) == PCIS_SERIALBUS_IPMI) {
  device_set_desc(dev, "IPMI System Interface");
  return (BUS_PROBE_GENERIC);
 }

 return (ENXIO);
}
