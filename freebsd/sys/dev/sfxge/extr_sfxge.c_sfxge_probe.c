
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int efx_family_t ;
typedef int device_t ;


 int DBGPRINT (int ,char*,int,...) ;
 int EFX_FAMILY_HUNTINGTON ;
 int EFX_FAMILY_MEDFORD ;
 int EFX_FAMILY_MEDFORD2 ;
 int EFX_FAMILY_SIENA ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int efx_family (int ,int ,int*,unsigned int*) ;
 int pci_get_device (int ) ;
 int pci_get_vendor (int ) ;

__attribute__((used)) static int
sfxge_probe(device_t dev)
{
 uint16_t pci_vendor_id;
 uint16_t pci_device_id;
 efx_family_t family;
 unsigned int mem_bar;
 int rc;

 pci_vendor_id = pci_get_vendor(dev);
 pci_device_id = pci_get_device(dev);

 DBGPRINT(dev, "PCI ID %04x:%04x", pci_vendor_id, pci_device_id);
 rc = efx_family(pci_vendor_id, pci_device_id, &family, &mem_bar);
 if (rc != 0) {
  DBGPRINT(dev, "efx_family fail %d", rc);
  return (ENXIO);
 }

 if (family == EFX_FAMILY_SIENA) {
  device_set_desc(dev, "Solarflare SFC9000 family");
  return (0);
 }

 if (family == EFX_FAMILY_HUNTINGTON) {
  device_set_desc(dev, "Solarflare SFC9100 family");
  return (0);
 }

 if (family == EFX_FAMILY_MEDFORD) {
  device_set_desc(dev, "Solarflare SFC9200 family");
  return (0);
 }

 if (family == EFX_FAMILY_MEDFORD2) {
  device_set_desc(dev, "Solarflare SFC9250 family");
  return (0);
 }

 DBGPRINT(dev, "impossible controller family %d", family);
 return (ENXIO);
}
