
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int32_t ;


 int PCIR_INTLINE ;
 int pci_docfgregread (int,int,int,int,int) ;
 int pci_i386_map_intline (int ) ;

u_int32_t
pci_cfgregread(int bus, int slot, int func, int reg, int bytes)
{
 uint32_t line;






 if (reg == PCIR_INTLINE && bytes == 1) {
  line = pci_docfgregread(bus, slot, func, PCIR_INTLINE, 1);
  return (pci_i386_map_intline(line));
 }
 return (pci_docfgregread(bus, slot, func, reg, bytes));
}
