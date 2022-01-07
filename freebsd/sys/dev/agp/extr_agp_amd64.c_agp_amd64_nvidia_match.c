
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int ENXIO ;
 int PCIC_BRIDGE ;
 int PCIR_CLASS ;
 int PCIR_DEVICE ;
 int PCIR_SUBCLASS ;
 int PCIR_VENDOR ;
 int PCIS_BRIDGE_PCI ;
 int pci_cfgregread (int ,int,int ,int ,int) ;

__attribute__((used)) static int
agp_amd64_nvidia_match(uint16_t devid)
{

 if (pci_cfgregread(0, 11, 0, PCIR_CLASS, 1) != PCIC_BRIDGE ||
     pci_cfgregread(0, 11, 0, PCIR_SUBCLASS, 1) != PCIS_BRIDGE_PCI ||
     pci_cfgregread(0, 11, 0, PCIR_VENDOR, 2) != 0x10de ||
     pci_cfgregread(0, 11, 0, PCIR_DEVICE, 2) != devid)
  return (ENXIO);

 return (0);
}
