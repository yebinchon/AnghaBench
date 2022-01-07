
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ ALS_PCI_ID0 ;
 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_devid (int ) ;

__attribute__((used)) static int
als_pci_probe(device_t dev)
{
 if (pci_get_devid(dev) == ALS_PCI_ID0) {
  device_set_desc(dev, "Avance Logic ALS4000");
  return BUS_PROBE_DEFAULT;
 }
 return ENXIO;
}
