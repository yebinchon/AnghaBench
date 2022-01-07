
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 long INT_MAX ;
 int PCIE_ARI_FUNCMAX ;
 int PCI_BUSMAX ;
 int PCI_DOMAINMAX ;
 int PCI_FUNCMAX ;
 int PCI_SLOTMAX ;
 int * pci_find_dbsf (int,int,int,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 long strtol (char const*,char**,int) ;

__attribute__((used)) static void
pci_lookup(void *arg, const char *name, device_t *dev)
{
 long val;
 char *end;
 int domain, bus, slot, func;

 if (*dev != ((void*)0))
  return;






 if (strncmp(name, "pci", 3) != 0)
  return;
 val = strtol(name + 3, &end, 10);
 if (val < 0 || val > INT_MAX || *end != ':')
  return;
 domain = val;
 val = strtol(end + 1, &end, 10);
 if (val < 0 || val > INT_MAX || *end != ':')
  return;
 bus = val;
 val = strtol(end + 1, &end, 10);
 if (val < 0 || val > INT_MAX)
  return;
 slot = val;
 if (*end == ':') {
  val = strtol(end + 1, &end, 10);
  if (val < 0 || val > INT_MAX || *end != '\0')
   return;
  func = val;
 } else if (*end == '\0') {
  func = slot;
  slot = bus;
  bus = domain;
  domain = 0;
 } else
  return;

 if (domain > PCI_DOMAINMAX || bus > PCI_BUSMAX || slot > PCI_SLOTMAX ||
     func > PCIE_ARI_FUNCMAX || (slot != 0 && func > PCI_FUNCMAX))
  return;

 *dev = pci_find_dbsf(domain, bus, slot, func);
}
