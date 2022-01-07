
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ PCI_DEVICE_XILINX_HDSPE ;


 scalar_t__ PCI_VENDOR_XILINX ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_device (int ) ;
 int pci_get_revid (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
hdspe_probe(device_t dev)
{
 uint32_t rev;

 if (pci_get_vendor(dev) == PCI_VENDOR_XILINX &&
     pci_get_device(dev) == PCI_DEVICE_XILINX_HDSPE) {
  rev = pci_get_revid(dev);
  switch (rev) {
  case 129:
   device_set_desc(dev, "RME HDSPe AIO");
   return (0);
  case 128:
   device_set_desc(dev, "RME HDSPe RayDAT");
   return (0);
  }
 }

 return (ENXIO);
}
