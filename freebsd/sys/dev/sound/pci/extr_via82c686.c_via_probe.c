
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ VIA_PCI_ID ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_devid (int ) ;

__attribute__((used)) static int
via_probe(device_t dev)
{
 if (pci_get_devid(dev) == VIA_PCI_ID) {
  device_set_desc(dev, "VIA VT82C686A");
  return BUS_PROBE_DEFAULT;
 }
 return ENXIO;
}
