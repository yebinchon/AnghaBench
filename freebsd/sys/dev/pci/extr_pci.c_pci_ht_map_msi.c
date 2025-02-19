
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct pcicfg_ht {int ht_msictrl; int ht_msiaddr; scalar_t__ ht_msimap; } ;
struct TYPE_2__ {struct pcicfg_ht ht; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef int device_t ;


 int PCIM_HTCMD_MSI_ENABLE ;
 scalar_t__ PCIR_HT_COMMAND ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int pci_write_config (int ,scalar_t__,int,int) ;

void
pci_ht_map_msi(device_t dev, uint64_t addr)
{
 struct pci_devinfo *dinfo = device_get_ivars(dev);
 struct pcicfg_ht *ht = &dinfo->cfg.ht;

 if (!ht->ht_msimap)
  return;

 if (addr && !(ht->ht_msictrl & PCIM_HTCMD_MSI_ENABLE) &&
     ht->ht_msiaddr >> 20 == addr >> 20) {

  ht->ht_msictrl |= PCIM_HTCMD_MSI_ENABLE;
  pci_write_config(dev, ht->ht_msimap + PCIR_HT_COMMAND,
      ht->ht_msictrl, 2);
 }

 if (!addr && ht->ht_msictrl & PCIM_HTCMD_MSI_ENABLE) {

  ht->ht_msictrl &= ~PCIM_HTCMD_MSI_ENABLE;
  pci_write_config(dev, ht->ht_msimap + PCIR_HT_COMMAND,
      ht->ht_msictrl, 2);
 }
}
