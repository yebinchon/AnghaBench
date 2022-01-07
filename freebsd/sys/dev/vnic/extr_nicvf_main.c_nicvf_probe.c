
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ PCI_DEVICE_ID_THUNDER_NIC_VF ;
 scalar_t__ PCI_DEVICE_ID_THUNDER_PASS1_NIC_VF ;
 scalar_t__ PCI_VENDOR_ID_CAVIUM ;
 int VNIC_VF_DEVSTR ;
 int device_set_desc (int ,int ) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
nicvf_probe(device_t dev)
{
 uint16_t vendor_id;
 uint16_t device_id;

 vendor_id = pci_get_vendor(dev);
 device_id = pci_get_device(dev);

 if (vendor_id != PCI_VENDOR_ID_CAVIUM)
  return (ENXIO);

 if (device_id == PCI_DEVICE_ID_THUNDER_NIC_VF ||
     device_id == PCI_DEVICE_ID_THUNDER_PASS1_NIC_VF) {
  device_set_desc(dev, VNIC_VF_DEVSTR);
  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
