
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ PCI_DEVICE_ID_VMWARE_PVSCSI ;
 scalar_t__ PCI_VENDOR_ID_VMWARE ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
pvscsi_probe(device_t dev)
{

 if (pci_get_vendor(dev) == PCI_VENDOR_ID_VMWARE &&
     pci_get_device(dev) == PCI_DEVICE_ID_VMWARE_PVSCSI) {
  device_set_desc(dev, "VMware Paravirtual SCSI Controller");
  return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}
