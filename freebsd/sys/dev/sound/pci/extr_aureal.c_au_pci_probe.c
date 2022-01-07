
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ AU8820_PCI_ID ;
 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_devid (int ) ;

__attribute__((used)) static int
au_pci_probe(device_t dev)
{
 if (pci_get_devid(dev) == AU8820_PCI_ID) {
  device_set_desc(dev, "Aureal Vortex 8820");
  return BUS_PROBE_DEFAULT;
 }

 return ENXIO;
}
