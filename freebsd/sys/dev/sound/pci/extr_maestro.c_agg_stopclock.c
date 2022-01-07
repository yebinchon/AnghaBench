
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct agg_info {int dev; } ;


 int CONF_ACPI_STOPCLOCK ;
 int PCI_POWERSTATE_D1 ;
 int PCI_POWERSTATE_D2 ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
agg_stopclock(struct agg_info *ess, int part, int st)
{
 u_int32_t data;

 data = pci_read_config(ess->dev, CONF_ACPI_STOPCLOCK, 4);
 if (part < 16) {
  if (st == PCI_POWERSTATE_D1)
   data &= ~(1 << part);
  else
   data |= (1 << part);
  if (st == PCI_POWERSTATE_D1 || st == PCI_POWERSTATE_D2)
   data |= (0x10000 << part);
  else
   data &= ~(0x10000 << part);
  pci_write_config(ess->dev, CONF_ACPI_STOPCLOCK, data, 4);
 }
}
