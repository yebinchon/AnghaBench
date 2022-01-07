
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pci_io {int pi_width; int pi_data; int pi_reg; int pi_sel; } ;
struct pci_conf {int pc_hdr; int pc_sel; } ;


 int PCIOCREAD ;
 int PCIOCWRITE ;
 int PCI_CFG_ROM_BAR ;
 int PCI_ROM_ADDR_MASK ;
 int ioctl (int,int ,struct pci_io*) ;

__attribute__((used)) static uint32_t
pci_testrombar(int pci_fd, struct pci_conf *dev)
{
 struct pci_io io;
 uint32_t romsize;

 romsize = 0;




 if (dev->pc_hdr != 0x00)
  return romsize;




 io.pi_sel = dev->pc_sel;
 io.pi_reg = PCI_CFG_ROM_BAR;
 io.pi_width = 4;
 io.pi_data = 0xFFFFFFFF;
 if (ioctl(pci_fd, PCIOCWRITE, &io) == -1)
  return romsize;




 if (ioctl(pci_fd, PCIOCREAD, &io) == -1)
  return 0;




 if (io.pi_data & PCI_ROM_ADDR_MASK)
  romsize = -(io.pi_data & PCI_ROM_ADDR_MASK);




 io.pi_data = 0;
 if (ioctl(pci_fd, PCIOCWRITE, &io) == -1)
  return 0;

 return romsize;
}
