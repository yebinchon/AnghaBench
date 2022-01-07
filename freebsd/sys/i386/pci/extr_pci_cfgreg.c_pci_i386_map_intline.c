
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCI_INVALID_IRQ ;

__attribute__((used)) static __inline int
pci_i386_map_intline(int line)
{
 if (line == 0 || line >= 128)
  return (PCI_INVALID_IRQ);
 return (line);
}
