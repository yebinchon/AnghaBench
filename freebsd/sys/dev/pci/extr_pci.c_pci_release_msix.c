
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource_list_entry {int * res; } ;
struct pcicfg_msix {int msix_alloc; int msix_table_len; TYPE_2__* msix_vectors; TYPE_2__* msix_table; int msix_ctrl; scalar_t__ msix_location; } ;
struct TYPE_3__ {struct pcicfg_msix msix; } ;
struct pci_devinfo {int resources; TYPE_1__ cfg; } ;
typedef int device_t ;
struct TYPE_4__ {scalar_t__ mte_vector; scalar_t__ mte_handlers; int mv_irq; } ;


 int EBUSY ;
 int ENODEV ;
 int KASSERT (int ,char*) ;
 int M_DEVBUF ;
 int PCIB_RELEASE_MSIX (int ,int ,int ) ;
 int PCIM_MSIXCTRL_MSIX_ENABLE ;
 scalar_t__ PCIR_MSIX_CTRL ;
 int SYS_RES_IRQ ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 int free (TYPE_2__*,int ) ;
 int pci_write_config (int ,scalar_t__,int ,int) ;
 int resource_list_delete (int *,int ,int) ;
 struct resource_list_entry* resource_list_find (int *,int ,int) ;

__attribute__((used)) static int
pci_release_msix(device_t dev, device_t child)
{
 struct pci_devinfo *dinfo = device_get_ivars(child);
 struct pcicfg_msix *msix = &dinfo->cfg.msix;
 struct resource_list_entry *rle;
 int i;


 if (msix->msix_alloc == 0)
  return (ENODEV);


 for (i = 0; i < msix->msix_table_len; i++) {
  if (msix->msix_table[i].mte_vector == 0)
   continue;
  if (msix->msix_table[i].mte_handlers > 0)
   return (EBUSY);
  rle = resource_list_find(&dinfo->resources, SYS_RES_IRQ, i + 1);
  KASSERT(rle != ((void*)0), ("missing resource"));
  if (rle->res != ((void*)0))
   return (EBUSY);
 }


 msix->msix_ctrl &= ~PCIM_MSIXCTRL_MSIX_ENABLE;
 pci_write_config(child, msix->msix_location + PCIR_MSIX_CTRL,
     msix->msix_ctrl, 2);


 for (i = 0; i < msix->msix_table_len; i++) {
  if (msix->msix_table[i].mte_vector == 0)
   continue;
  resource_list_delete(&dinfo->resources, SYS_RES_IRQ, i + 1);
 }
 free(msix->msix_table, M_DEVBUF);
 msix->msix_table_len = 0;


 for (i = 0; i < msix->msix_alloc; i++)
  PCIB_RELEASE_MSIX(device_get_parent(dev), child,
      msix->msix_vectors[i].mv_irq);
 free(msix->msix_vectors, M_DEVBUF);
 msix->msix_alloc = 0;
 return (0);
}
