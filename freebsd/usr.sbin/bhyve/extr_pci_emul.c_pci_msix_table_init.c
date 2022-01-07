
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* table; } ;
struct pci_devinst {TYPE_1__ pi_msix; } ;
struct TYPE_4__ {int vector_control; } ;


 int MAX_MSIX_TABLE_ENTRIES ;
 int MSIX_TABLE_ENTRY_SIZE ;
 int PCIM_MSIX_VCTRL_MASK ;
 int assert (int) ;
 TYPE_2__* calloc (int,int) ;

__attribute__((used)) static void
pci_msix_table_init(struct pci_devinst *pi, int table_entries)
{
 int i, table_size;

 assert(table_entries > 0);
 assert(table_entries <= MAX_MSIX_TABLE_ENTRIES);

 table_size = table_entries * MSIX_TABLE_ENTRY_SIZE;
 pi->pi_msix.table = calloc(1, table_size);


 for (i = 0; i < table_entries; i++)
  pi->pi_msix.table[i].vector_control |= PCIM_MSIX_VCTRL_MASK;
}
