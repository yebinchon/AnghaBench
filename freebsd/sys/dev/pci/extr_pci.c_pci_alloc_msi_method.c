
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct resource_list_entry {int * res; } ;
struct TYPE_5__ {int msi_alloc; scalar_t__ msi_location; int msi_msgnum; int msi_ctrl; scalar_t__ msi_handlers; } ;
struct TYPE_4__ {scalar_t__ msix_alloc; } ;
struct TYPE_6__ {TYPE_2__ msi; TYPE_1__ msix; } ;
struct pci_devinfo {int resources; TYPE_3__ cfg; } ;
typedef TYPE_3__ pcicfgregs ;
typedef int device_t ;


 int EINVAL ;
 int ENODEV ;
 int ENXIO ;
 int PCIB_ALLOC_MSI (int ,int ,int,int,int*) ;
 int PCIM_MSICTRL_MME_MASK ;
 scalar_t__ PCIR_MSI_CTRL ;
 int SYS_RES_IRQ ;
 scalar_t__ bootverbose ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,int,...) ;
 int ffs (int) ;
 int min (int,int) ;
 int pci_do_msi ;
 scalar_t__ pci_msi_blacklisted () ;
 int pci_write_config (int ,scalar_t__,int,int) ;
 int powerof2 (int) ;
 int printf (char*,...) ;
 int resource_list_add (int *,int ,int,int,int,int) ;
 struct resource_list_entry* resource_list_find (int *,int ,int ) ;

int
pci_alloc_msi_method(device_t dev, device_t child, int *count)
{
 struct pci_devinfo *dinfo = device_get_ivars(child);
 pcicfgregs *cfg = &dinfo->cfg;
 struct resource_list_entry *rle;
 int actual, error, i, irqs[32];
 uint16_t ctrl;


 if (*count == 0)
  return (EINVAL);


 rle = resource_list_find(&dinfo->resources, SYS_RES_IRQ, 0);
 if (rle != ((void*)0) && rle->res != ((void*)0))
  return (ENXIO);


 if (cfg->msi.msi_alloc != 0 || cfg->msix.msix_alloc != 0)
  return (ENXIO);


 if (pci_msi_blacklisted())
  return (ENXIO);


 if (cfg->msi.msi_location == 0 || !pci_do_msi)
  return (ENODEV);

 if (bootverbose)
  device_printf(child,
      "attempting to allocate %d MSI vectors (%d supported)\n",
      *count, cfg->msi.msi_msgnum);


 actual = min(*count, cfg->msi.msi_msgnum);


 actual = min(actual, 32);


 if (!powerof2(actual))
  return (EINVAL);

 for (;;) {

  error = PCIB_ALLOC_MSI(device_get_parent(dev), child, actual,
      actual, irqs);
  if (error == 0)
   break;
  if (actual == 1)
   return (error);


  actual >>= 1;
 }






 for (i = 0; i < actual; i++)
  resource_list_add(&dinfo->resources, SYS_RES_IRQ, i + 1,
      irqs[i], irqs[i], 1);

 if (bootverbose) {
  if (actual == 1)
   device_printf(child, "using IRQ %d for MSI\n", irqs[0]);
  else {
   int run;






   device_printf(child, "using IRQs %d", irqs[0]);
   run = 0;
   for (i = 1; i < actual; i++) {


    if (irqs[i] == irqs[i - 1] + 1) {
     run = 1;
     continue;
    }


    if (run) {
     printf("-%d", irqs[i - 1]);
     run = 0;
    }


    printf(",%d", irqs[i]);
   }


   if (run)
    printf("-%d", irqs[actual - 1]);
   printf(" for MSI\n");
  }
 }


 ctrl = cfg->msi.msi_ctrl;
 ctrl &= ~PCIM_MSICTRL_MME_MASK;
 ctrl |= (ffs(actual) - 1) << 4;
 cfg->msi.msi_ctrl = ctrl;
 pci_write_config(child, cfg->msi.msi_location + PCIR_MSI_CTRL, ctrl, 2);


 cfg->msi.msi_alloc = actual;
 cfg->msi.msi_handlers = 0;
 *count = actual;
 return (0);
}
