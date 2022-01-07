
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ PTNETMAP_PCI_NETIF_ID ;
 scalar_t__ PTNETMAP_PCI_VENDOR_ID ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
ptnet_probe(device_t dev)
{
 if (pci_get_vendor(dev) != PTNETMAP_PCI_VENDOR_ID ||
  pci_get_device(dev) != PTNETMAP_PCI_NETIF_ID) {
  return (ENXIO);
 }

 device_set_desc(dev, "ptnet network adapter");

 return (BUS_PROBE_DEFAULT);
}
