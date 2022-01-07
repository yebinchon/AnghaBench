
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ PCI_DEVICE_ID_AMD53C974 ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_devid (int ) ;

__attribute__((used)) static int
esp_pci_probe(device_t dev)
{

 if (pci_get_devid(dev) == PCI_DEVICE_ID_AMD53C974) {
  device_set_desc(dev, "AMD Am53C974 Fast-SCSI");
  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
