
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct pci_io {int pi_width; scalar_t__ pi_data; int pi_reg; int pi_sel; } ;
struct pci_conf {int pc_sel; } ;


 int PCIOCWRITE ;
 int PCI_CFG_CMD ;
 int PCI_CFG_ROM_BAR ;
 int ioctl (int,int ,struct pci_io*) ;
 int perror (char*) ;

__attribute__((used)) static int
pci_disable_bars(int pci_fd, struct pci_conf *dev, uint16_t *oldcmd)
{
 struct pci_io io;




 io.pi_sel = dev->pc_sel;
 io.pi_reg = PCI_CFG_ROM_BAR;
 io.pi_width = 4;
 io.pi_data = 0;
 if (ioctl(pci_fd, PCIOCWRITE, &io) == -1)
  return 0;




 io.pi_sel = dev->pc_sel;
 io.pi_reg = PCI_CFG_CMD;
 io.pi_width = 2;
 io.pi_data = *oldcmd;
 if (ioctl(pci_fd, PCIOCWRITE, &io) == -1) {
  perror("ioctl");
  return 0;
 }

 return 0;
}
