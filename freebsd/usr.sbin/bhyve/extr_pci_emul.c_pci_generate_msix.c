
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int table_count; struct msix_table_entry* table; scalar_t__ function_mask; } ;
struct pci_devinst {int pi_vmctx; TYPE_1__ pi_msix; } ;
struct msix_table_entry {int vector_control; int msg_data; int addr; } ;


 int PCIM_MSIX_VCTRL_MASK ;
 int pci_msix_enabled (struct pci_devinst*) ;
 int vm_lapic_msi (int ,int ,int ) ;

void
pci_generate_msix(struct pci_devinst *pi, int index)
{
 struct msix_table_entry *mte;

 if (!pci_msix_enabled(pi))
  return;

 if (pi->pi_msix.function_mask)
  return;

 if (index >= pi->pi_msix.table_count)
  return;

 mte = &pi->pi_msix.table[index];
 if ((mte->vector_control & PCIM_MSIX_VCTRL_MASK) == 0) {

  vm_lapic_msi(pi->pi_vmctx, mte->addr, mte->msg_data);
 }
}
