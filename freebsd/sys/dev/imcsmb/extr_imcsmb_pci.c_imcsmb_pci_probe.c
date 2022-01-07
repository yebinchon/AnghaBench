
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct imcsmb_pci_device {scalar_t__ id; int * name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ PCI_VENDOR_INTEL ;
 int device_set_desc (int ,int *) ;
 struct imcsmb_pci_device* imcsmb_pci_devices ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
imcsmb_pci_probe(device_t dev)
{
 struct imcsmb_pci_device *pci_device;
 int rc;
 uint16_t pci_dev_id;

 rc = ENXIO;

 if (pci_get_vendor(dev) != PCI_VENDOR_INTEL) {
  goto out;
 }

 pci_dev_id = pci_get_device(dev);
 for (pci_device = imcsmb_pci_devices;
     pci_device->name != ((void*)0);
     pci_device++) {
  if (pci_dev_id == pci_device->id) {
   device_set_desc(dev, pci_device->name);
   rc = BUS_PROBE_DEFAULT;
   goto out;
  }
 }

out:
 return (rc);
}
