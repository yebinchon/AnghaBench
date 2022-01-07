
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int uint32_t ;




 int I830_GMCH_CTRL ;
 int I855_GMCH_GMS_MASK ;
 int MiB (int) ;
 int pci_cfgregread (int ,int ,int ,int ,int) ;

__attribute__((used)) static vm_paddr_t
intel_stolen_size_gen3(int bus, int slot, int func)
{
 uint32_t ctrl;
 vm_paddr_t val;

 ctrl = pci_cfgregread(0, 0, 0, I830_GMCH_CTRL, 2);
 val = ctrl & I855_GMCH_GMS_MASK;

 switch (val) {
 case 137:
  return (MiB(1));
 case 135:
  return (MiB(4));
 case 134:
  return (MiB(8));
 case 138:
  return (MiB(16));
 case 136:
  return (MiB(32));
 case 133:
  return (MiB(48));
 case 132:
  return (MiB(64));
 case 140:
  return (MiB(128));
 case 139:
  return (MiB(256));
 case 128:
  return (MiB(96));
 case 131:
  return (MiB(160));
 case 130:
  return (MiB(224));
 case 129:
  return (MiB(352));
 }
 return (0);
}
