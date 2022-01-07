
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;



 scalar_t__ PCI_VENDOR_EMULEX ;
 int device_set_desc (int ,char*) ;
 int pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
ocs_pci_probe(device_t dev)
{
 char *desc = ((void*)0);

 if (pci_get_vendor(dev) != PCI_VENDOR_EMULEX) {
  return ENXIO;
 }

 switch (pci_get_device(dev)) {
 case 129:
  desc = "Emulex LightPulse FC Adapter";
  break;
 case 130:
  desc = "Emulex LightPulse FC Adapter";
  break;
 case 128:
  desc = "Emulex LightPulse 10GbE FCoE/NIC Adapter";
  break;
 default:
  return ENXIO;
 }

 device_set_desc(dev, desc);

 return BUS_PROBE_DEFAULT;
}
