
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct pci_devinst {TYPE_1__* pi_bar; } ;
struct TYPE_2__ {int type; } ;







 int PCIM_CMD_MEMEN ;
 int PCIM_CMD_PORTEN ;
 int PCIR_COMMAND ;
 int PCI_BARMAX ;
 int assert (int ) ;
 int pci_get_cfgdata16 (struct pci_devinst*,int ) ;
 int pci_lintr_update (struct pci_devinst*) ;
 int register_bar (struct pci_devinst*,int) ;
 int unregister_bar (struct pci_devinst*,int) ;

void
pci_emul_cmd_changed(struct pci_devinst *pi, uint16_t old)
{
 int i;
 uint16_t changed, new;

 new = pci_get_cfgdata16(pi, PCIR_COMMAND);
 changed = old ^ new;





 for (i = 0; i <= PCI_BARMAX; i++) {
  switch (pi->pi_bar[i].type) {
   case 128:
   case 129:
    break;
   case 132:

    if (changed & PCIM_CMD_PORTEN) {
     if (new & PCIM_CMD_PORTEN)
      register_bar(pi, i);
     else
      unregister_bar(pi, i);
    }
    break;
   case 131:
   case 130:

    if (changed & PCIM_CMD_MEMEN) {
     if (new & PCIM_CMD_MEMEN)
      register_bar(pi, i);
     else
      unregister_bar(pi, i);
    }
    break;
   default:
    assert(0);
  }
 }





 pci_lintr_update(pi);
}
