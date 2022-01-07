
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int16_t ;
typedef int device_t ;


 scalar_t__ CFGMECH_NONE ;
 scalar_t__ CFGMECH_PCIE ;
 int PCIR_DEVICE ;
 int PCIR_VENDOR ;
 scalar_t__ bootverbose ;
 scalar_t__ cfgmech ;
 int device_printf (int ,char*) ;
 int pci_cfgregread (int ,int ,int ,int,int) ;
 int pcie_cfgregopen (int,int ,int) ;

__attribute__((used)) static void
legacy_pci_cfgregopen(device_t dev)
{
 uint64_t pciebar;
 u_int16_t did, vid;

 if (cfgmech == CFGMECH_NONE || cfgmech == CFGMECH_PCIE)
  return;


 vid = pci_cfgregread(0, 0, 0, PCIR_VENDOR, 2);
 did = pci_cfgregread(0, 0, 0, PCIR_DEVICE, 2);
 switch (vid) {
 case 0x8086:
  switch (did) {
  case 0x3590:
  case 0x3592:

   pciebar = pci_cfgregread(0, 0, 0, 0xce, 2) << 16;
   pcie_cfgregopen(pciebar, 0, 255);
   break;
  case 0x2580:
  case 0x2584:
  case 0x2590:

   pciebar = pci_cfgregread(0, 0, 0, 0x48, 4);
   pcie_cfgregopen(pciebar, 0, 255);
   break;
  }
 }

 if (bootverbose && cfgmech == CFGMECH_PCIE)
  device_printf(dev, "Enabled ECAM PCIe accesses\n");
}
