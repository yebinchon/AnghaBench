
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ PCI_PRODUCT_AMD_GEODE_LX_CRYPTO ;
 scalar_t__ PCI_VENDOR_AMD ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
glxsb_probe(device_t dev)
{

 if (pci_get_vendor(dev) == PCI_VENDOR_AMD &&
     pci_get_device(dev) == PCI_PRODUCT_AMD_GEODE_LX_CRYPTO) {
  device_set_desc(dev,
      "AMD Geode LX Security Block (AES-128-CBC, RNG)");
  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
