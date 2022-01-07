
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int table_count; scalar_t__ table; } ;
struct pci_devinst {TYPE_1__ pi_msix; } ;


 int MSIX_TABLE_ENTRY_SIZE ;
 scalar_t__ pci_valid_pba_offset (struct pci_devinst*,int) ;

uint64_t
pci_emul_msix_tread(struct pci_devinst *pi, uint64_t offset, int size)
{
 char *dest;
 int msix_entry_offset;
 int tab_index;
 uint64_t retval = ~0;






 if (size != 1 && size != 4 && size != 8)
  return (retval);

 msix_entry_offset = offset % MSIX_TABLE_ENTRY_SIZE;


 if ((msix_entry_offset % size) != 0) {
  return (retval);
 }

 tab_index = offset / MSIX_TABLE_ENTRY_SIZE;

 if (tab_index < pi->pi_msix.table_count) {

  dest = (char *)(pi->pi_msix.table + tab_index);
  dest += msix_entry_offset;

  if (size == 1)
   retval = *((uint8_t *)dest);
  else if (size == 4)
   retval = *((uint32_t *)dest);
  else
   retval = *((uint64_t *)dest);
 } else if (pci_valid_pba_offset(pi, offset)) {

  retval = 0;
 }

 return (retval);
}
