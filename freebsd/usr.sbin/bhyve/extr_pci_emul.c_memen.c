
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pci_devinst {int dummy; } ;


 int PCIM_CMD_MEMEN ;
 int PCIR_COMMAND ;
 int pci_get_cfgdata16 (struct pci_devinst*,int ) ;

__attribute__((used)) static int
memen(struct pci_devinst *pi)
{
 uint16_t cmd;

 cmd = pci_get_cfgdata16(pi, PCIR_COMMAND);

 return (cmd & PCIM_CMD_MEMEN);
}
