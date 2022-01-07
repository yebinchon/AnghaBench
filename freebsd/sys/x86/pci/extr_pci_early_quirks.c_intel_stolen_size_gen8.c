
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int uint32_t ;


 int BDW_GMCH_GMS_MASK ;
 int BDW_GMCH_GMS_SHIFT ;
 int MiB (int) ;
 int SNB_GMCH_CTRL ;
 int pci_cfgregread (int,int,int,int ,int) ;

__attribute__((used)) static vm_paddr_t
intel_stolen_size_gen8(int bus, int slot, int func)
{
 uint32_t ctrl;
 vm_paddr_t val;

 ctrl = pci_cfgregread(bus, slot, func, SNB_GMCH_CTRL, 2);
 val = (ctrl >> BDW_GMCH_GMS_SHIFT) & BDW_GMCH_GMS_MASK;
 return (val * MiB(32));
}
