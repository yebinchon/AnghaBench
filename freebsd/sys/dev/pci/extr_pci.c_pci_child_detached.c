
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource_list {int dummy; } ;
struct TYPE_5__ {scalar_t__ msix_alloc; } ;
struct TYPE_4__ {scalar_t__ msi_alloc; } ;
struct TYPE_6__ {TYPE_2__ msix; TYPE_1__ msi; } ;
struct pci_devinfo {TYPE_3__ cfg; struct resource_list resources; } ;
typedef int device_t ;


 int PCI_RES_BUS ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int pci_cfg_save (int ,struct pci_devinfo*,int) ;
 int pci_printf (TYPE_3__*,char*) ;
 int pci_release_msi (int ) ;
 scalar_t__ resource_list_release_active (struct resource_list*,int ,int ,int ) ;

void
pci_child_detached(device_t dev, device_t child)
{
 struct pci_devinfo *dinfo;
 struct resource_list *rl;

 dinfo = device_get_ivars(child);
 rl = &dinfo->resources;






 if (resource_list_release_active(rl, dev, child, SYS_RES_IRQ) != 0)
  pci_printf(&dinfo->cfg, "Device leaked IRQ resources\n");
 if (dinfo->cfg.msi.msi_alloc != 0 || dinfo->cfg.msix.msix_alloc != 0) {
  pci_printf(&dinfo->cfg, "Device leaked MSI vectors\n");
  (void)pci_release_msi(child);
 }
 if (resource_list_release_active(rl, dev, child, SYS_RES_MEMORY) != 0)
  pci_printf(&dinfo->cfg, "Device leaked memory resources\n");
 if (resource_list_release_active(rl, dev, child, SYS_RES_IOPORT) != 0)
  pci_printf(&dinfo->cfg, "Device leaked I/O resources\n");





 pci_cfg_save(child, dinfo, 1);
}
