
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AGP_VIA_AGPSEL ;
 int PCIC_BRIDGE ;
 int PCIR_CLASS ;
 int PCIR_DEVICE ;
 int PCIR_SUBCLASS ;
 int PCIR_VENDOR ;
 int PCIS_BRIDGE_PCI ;
 int pci_cfgregread (int ,int,int ,int ,int) ;

__attribute__((used)) static int
agp_amd64_via_match(void)
{

 if (pci_cfgregread(0, 1, 0, PCIR_CLASS, 1) != PCIC_BRIDGE ||
     pci_cfgregread(0, 1, 0, PCIR_SUBCLASS, 1) != PCIS_BRIDGE_PCI ||
     pci_cfgregread(0, 1, 0, PCIR_VENDOR, 2) != 0x1106 ||
     pci_cfgregread(0, 1, 0, PCIR_DEVICE, 2) != 0xb188 ||
     (pci_cfgregread(0, 1, 0, AGP_VIA_AGPSEL, 1) & 2))
  return (0);

 return (1);
}
