
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int uint32_t ;


 int INTEL_BSM ;
 int INTEL_BSM_MASK ;
 int pci_cfgregread (int,int,int,int ,int) ;

__attribute__((used)) static vm_paddr_t
intel_stolen_base_gen3(int bus, int slot, int func)
{
 uint32_t ctrl;
 vm_paddr_t val;

 ctrl = pci_cfgregread(bus, slot, func, INTEL_BSM, 4);
 val = ctrl & INTEL_BSM_MASK;
 return (val);
}
