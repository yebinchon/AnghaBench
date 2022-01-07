
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pci_devinst {int dummy; } ;


 int CFGREAD (struct pci_devinst*,int,int) ;
 int CFGWRITE (struct pci_devinst*,int,int,int) ;
 int PCIR_COMMAND ;
 int pci_emul_cmd_changed (struct pci_devinst*,int) ;
 int pci_get_cfgdata16 (struct pci_devinst*,int ) ;

__attribute__((used)) static void
pci_emul_cmdsts_write(struct pci_devinst *pi, int coff, uint32_t new, int bytes)
{
 int rshift;
 uint32_t cmd, old, readonly;

 cmd = pci_get_cfgdata16(pi, PCIR_COMMAND);
 rshift = (coff & 0x3) * 8;
 readonly = 0xFFFFF880 >> rshift;

 old = CFGREAD(pi, coff, bytes);
 new &= ~readonly;
 new |= (old & readonly);
 CFGWRITE(pi, coff, new, bytes);

 pci_emul_cmd_changed(pi, cmd);
}
