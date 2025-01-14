
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint16_t ;
struct pcicfg_msi {int msi_ctrl; int msi_addr; int msi_data; scalar_t__ msi_location; } ;
struct TYPE_2__ {struct pcicfg_msi msi; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef int device_t ;


 int PCIM_MSICTRL_64BIT ;
 int PCIM_MSICTRL_MSI_ENABLE ;
 scalar_t__ PCIR_MSI_ADDR ;
 scalar_t__ PCIR_MSI_ADDR_HIGH ;
 scalar_t__ PCIR_MSI_CTRL ;
 scalar_t__ PCIR_MSI_DATA ;
 scalar_t__ PCIR_MSI_DATA_64BIT ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int pci_write_config (int ,scalar_t__,int,int) ;

__attribute__((used)) static void
pci_resume_msi(device_t dev)
{
 struct pci_devinfo *dinfo = device_get_ivars(dev);
 struct pcicfg_msi *msi = &dinfo->cfg.msi;
 uint64_t address;
 uint16_t data;

 if (msi->msi_ctrl & PCIM_MSICTRL_MSI_ENABLE) {
  address = msi->msi_addr;
  data = msi->msi_data;
  pci_write_config(dev, msi->msi_location + PCIR_MSI_ADDR,
      address & 0xffffffff, 4);
  if (msi->msi_ctrl & PCIM_MSICTRL_64BIT) {
   pci_write_config(dev, msi->msi_location +
       PCIR_MSI_ADDR_HIGH, address >> 32, 4);
   pci_write_config(dev, msi->msi_location +
       PCIR_MSI_DATA_64BIT, data, 2);
  } else
   pci_write_config(dev, msi->msi_location + PCIR_MSI_DATA,
       data, 2);
 }
 pci_write_config(dev, msi->msi_location + PCIR_MSI_CTRL, msi->msi_ctrl,
     2);
}
