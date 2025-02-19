
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct lio_vendor_info {scalar_t__ vendor_id; scalar_t__ device_id; scalar_t__ subdevice_id; scalar_t__ revision_id; size_t index; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 char* LIO_VERSION ;
 scalar_t__ PCI_VENDOR_ID_CAVIUM ;
 int device_set_desc_copy (int ,char*) ;
 struct lio_vendor_info* lio_pci_tbl ;
 char** lio_strings ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_revid (int ) ;
 scalar_t__ pci_get_subdevice (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static int
lio_probe(device_t dev)
{
 struct lio_vendor_info *tbl;

 uint16_t vendor_id;
 uint16_t device_id;
 uint16_t subdevice_id;
 uint8_t revision_id;
 char device_ver[256];

 vendor_id = pci_get_vendor(dev);
 if (vendor_id != PCI_VENDOR_ID_CAVIUM)
  return (ENXIO);

 device_id = pci_get_device(dev);
 subdevice_id = pci_get_subdevice(dev);
 revision_id = pci_get_revid(dev);

 tbl = lio_pci_tbl;
 while (tbl->vendor_id) {
  if ((vendor_id == tbl->vendor_id) &&
      (device_id == tbl->device_id) &&
      (subdevice_id == tbl->subdevice_id) &&
      (revision_id == tbl->revision_id)) {
   sprintf(device_ver, "%s, Version - %s",
    lio_strings[tbl->index], LIO_VERSION);
   device_set_desc_copy(dev, device_ver);
   return (BUS_PROBE_DEFAULT);
  }

  tbl++;
 }

 return (ENXIO);
}
