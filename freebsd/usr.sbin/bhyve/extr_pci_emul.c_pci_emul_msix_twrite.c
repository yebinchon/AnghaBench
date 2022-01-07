
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int table_count; scalar_t__ table; } ;
struct pci_devinst {TYPE_1__ pi_msix; } ;


 int MSIX_TABLE_ENTRY_SIZE ;

int
pci_emul_msix_twrite(struct pci_devinst *pi, uint64_t offset, int size,
       uint64_t value)
{
 int msix_entry_offset;
 int tab_index;
 char *dest;


 if (size != 4 && size != 8)
  return (-1);




 tab_index = offset / MSIX_TABLE_ENTRY_SIZE;
 if (tab_index >= pi->pi_msix.table_count)
  return (-1);

 msix_entry_offset = offset % MSIX_TABLE_ENTRY_SIZE;


 if ((msix_entry_offset % size) != 0)
  return (-1);

 dest = (char *)(pi->pi_msix.table + tab_index);
 dest += msix_entry_offset;

 if (size == 4)
  *((uint32_t *)dest) = value;
 else
  *((uint64_t *)dest) = value;

 return (0);
}
