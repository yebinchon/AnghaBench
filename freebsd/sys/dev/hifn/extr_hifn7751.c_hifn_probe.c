
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ PCI_PRODUCT_HIFN_7751 ;
 scalar_t__ PCI_PRODUCT_HIFN_7811 ;
 scalar_t__ PCI_PRODUCT_HIFN_7951 ;
 scalar_t__ PCI_PRODUCT_HIFN_7955 ;
 scalar_t__ PCI_PRODUCT_HIFN_7956 ;
 scalar_t__ PCI_PRODUCT_INVERTEX_AEON ;
 scalar_t__ PCI_PRODUCT_NETSEC_7751 ;
 scalar_t__ PCI_VENDOR_HIFN ;
 scalar_t__ PCI_VENDOR_INVERTEX ;
 scalar_t__ PCI_VENDOR_NETSEC ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
hifn_probe(device_t dev)
{
 if (pci_get_vendor(dev) == PCI_VENDOR_INVERTEX &&
     pci_get_device(dev) == PCI_PRODUCT_INVERTEX_AEON)
  return (BUS_PROBE_DEFAULT);
 if (pci_get_vendor(dev) == PCI_VENDOR_HIFN &&
     (pci_get_device(dev) == PCI_PRODUCT_HIFN_7751 ||
      pci_get_device(dev) == PCI_PRODUCT_HIFN_7951 ||
      pci_get_device(dev) == PCI_PRODUCT_HIFN_7955 ||
      pci_get_device(dev) == PCI_PRODUCT_HIFN_7956 ||
      pci_get_device(dev) == PCI_PRODUCT_HIFN_7811))
  return (BUS_PROBE_DEFAULT);
 if (pci_get_vendor(dev) == PCI_VENDOR_NETSEC &&
     pci_get_device(dev) == PCI_PRODUCT_NETSEC_7751)
  return (BUS_PROBE_DEFAULT);
 return (ENXIO);
}
