
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int BUS_PROBE_GENERIC ;
 scalar_t__ CB_UNKNOWN ;
 int ENXIO ;
 scalar_t__ PCIC_BRIDGE ;
 scalar_t__ PCIS_BRIDGE_CARDBUS ;
 scalar_t__ cbb_chipset (int ,char const**) ;
 int device_set_desc (int ,char const*) ;
 scalar_t__ pci_get_class (int ) ;
 int pci_get_devid (int ) ;
 scalar_t__ pci_get_progif (int ) ;
 scalar_t__ pci_get_subclass (int ) ;

__attribute__((used)) static int
cbb_pci_probe(device_t brdev)
{
 const char *name;
 uint32_t progif;
 uint32_t baseclass;
 uint32_t subclass;





 if (cbb_chipset(pci_get_devid(brdev), &name) != CB_UNKNOWN) {
  device_set_desc(brdev, name);
  return (BUS_PROBE_DEFAULT);
 }






 baseclass = pci_get_class(brdev);
 subclass = pci_get_subclass(brdev);
 progif = pci_get_progif(brdev);
 if (baseclass == PCIC_BRIDGE &&
     subclass == PCIS_BRIDGE_CARDBUS && progif == 0) {
  device_set_desc(brdev, "PCI-CardBus Bridge");
  return (BUS_PROBE_GENERIC);
 }
 return (ENXIO);
}
