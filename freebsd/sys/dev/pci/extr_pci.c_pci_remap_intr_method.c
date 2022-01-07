
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint64_t ;
typedef void* uint32_t ;
typedef scalar_t__ u_int ;
struct resource_list_entry {scalar_t__ start; } ;
struct TYPE_5__ {int msix_alloc; int msix_table_len; struct msix_table_entry* msix_table; struct msix_vector* msix_vectors; } ;
struct TYPE_4__ {int msi_alloc; scalar_t__ msi_handlers; void* msi_data; void* msi_addr; } ;
struct TYPE_6__ {TYPE_2__ msix; TYPE_1__ msi; } ;
struct pci_devinfo {TYPE_3__ cfg; int resources; } ;
struct msix_vector {scalar_t__ mv_irq; void* mv_data; void* mv_address; } ;
struct msix_table_entry {int mte_vector; scalar_t__ mte_handlers; } ;
typedef TYPE_3__ pcicfgregs ;
typedef int device_t ;


 int ENOENT ;
 int PCIB_MAP_MSI (int ,int ,scalar_t__,void**,void**) ;
 int SYS_RES_IRQ ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 int pci_disable_msi (int ) ;
 int pci_enable_msi (int ,void*,void*) ;
 int pci_enable_msix (int ,int,void*,void*) ;
 int pci_mask_msix (int ,int) ;
 int pci_unmask_msix (int ,int) ;
 struct resource_list_entry* resource_list_find (int *,int ,int) ;

__attribute__((used)) static int
pci_remap_intr_method(device_t bus, device_t dev, u_int irq)
{
 struct pci_devinfo *dinfo = device_get_ivars(dev);
 pcicfgregs *cfg = &dinfo->cfg;
 struct resource_list_entry *rle;
 struct msix_table_entry *mte;
 struct msix_vector *mv;
 uint64_t addr;
 uint32_t data;
 int error, i, j;






 if (cfg->msi.msi_alloc > 0) {


  if (cfg->msi.msi_handlers == 0)
   return (0);
  for (i = 0; i < cfg->msi.msi_alloc; i++) {
   rle = resource_list_find(&dinfo->resources, SYS_RES_IRQ,
       i + 1);
   if (rle->start == irq) {
    error = PCIB_MAP_MSI(device_get_parent(bus),
        dev, irq, &addr, &data);
    if (error)
     return (error);
    pci_disable_msi(dev);
    dinfo->cfg.msi.msi_addr = addr;
    dinfo->cfg.msi.msi_data = data;
    pci_enable_msi(dev, addr, data);
    return (0);
   }
  }
  return (ENOENT);
 }






 if (cfg->msix.msix_alloc > 0) {
  for (i = 0; i < cfg->msix.msix_alloc; i++) {
   mv = &cfg->msix.msix_vectors[i];
   if (mv->mv_irq == irq) {
    error = PCIB_MAP_MSI(device_get_parent(bus),
        dev, irq, &addr, &data);
    if (error)
     return (error);
    mv->mv_address = addr;
    mv->mv_data = data;
    for (j = 0; j < cfg->msix.msix_table_len; j++) {
     mte = &cfg->msix.msix_table[j];
     if (mte->mte_vector != i + 1)
      continue;
     if (mte->mte_handlers == 0)
      continue;
     pci_mask_msix(dev, j);
     pci_enable_msix(dev, j, addr, data);
     pci_unmask_msix(dev, j);
    }
   }
  }
  return (ENOENT);
 }

 return (ENOENT);
}
