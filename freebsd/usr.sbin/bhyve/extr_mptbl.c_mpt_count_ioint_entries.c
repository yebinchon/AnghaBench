
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCI_BUSMAX ;
 scalar_t__ pci_count_lintr (int) ;

__attribute__((used)) static int
mpt_count_ioint_entries(void)
{
 int bus, count;

 count = 0;
 for (bus = 0; bus <= PCI_BUSMAX; bus++)
  count += pci_count_lintr(bus);





 return (16 + count);
}
