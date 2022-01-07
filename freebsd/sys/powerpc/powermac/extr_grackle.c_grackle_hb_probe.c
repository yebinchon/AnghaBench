
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_quiet (int ) ;
 int device_set_desc (int ,char*) ;
 int pci_get_devid (int ) ;

__attribute__((used)) static int
grackle_hb_probe(device_t dev)
{

 if (pci_get_devid(dev) == 0x00021057) {
  device_set_desc(dev, "Grackle Host to PCI bridge");
  device_quiet(dev);
  return (0);
 }

 return (ENXIO);
}
