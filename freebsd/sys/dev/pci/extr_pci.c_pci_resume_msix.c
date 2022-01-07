
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcicfg_msix {scalar_t__ msix_alloc; int msix_msgnum; int msix_table_len; int msix_ctrl; scalar_t__ msix_location; struct msix_vector* msix_vectors; struct msix_table_entry* msix_table; } ;
struct TYPE_2__ {struct pcicfg_msix msix; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
struct msix_vector {int mv_data; int mv_address; } ;
struct msix_table_entry {int mte_vector; scalar_t__ mte_handlers; } ;
typedef int device_t ;


 scalar_t__ PCIR_MSIX_CTRL ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int pci_mask_msix (int ,int) ;
 int pci_unmask_msix (int ,int) ;
 int pci_write_config (int ,scalar_t__,int ,int) ;
 int pci_write_msix_entry (int ,int,int ,int ) ;

__attribute__((used)) static void
pci_resume_msix(device_t dev)
{
 struct pci_devinfo *dinfo = device_get_ivars(dev);
 struct pcicfg_msix *msix = &dinfo->cfg.msix;
 struct msix_table_entry *mte;
 struct msix_vector *mv;
 int i;

 if (msix->msix_alloc > 0) {

  for (i = 0; i < msix->msix_msgnum; i++)
   pci_mask_msix(dev, i);


  for (i = 0; i < msix->msix_table_len; i++) {
   mte = &msix->msix_table[i];
   if (mte->mte_vector == 0 || mte->mte_handlers == 0)
    continue;
   mv = &msix->msix_vectors[mte->mte_vector - 1];
   pci_write_msix_entry(dev, i, mv->mv_address,
       mv->mv_data);
   pci_unmask_msix(dev, i);
  }
 }
 pci_write_config(dev, msix->msix_location + PCIR_MSIX_CTRL,
     msix->msix_ctrl, 2);
}
