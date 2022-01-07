
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcicfg_msix {scalar_t__ msix_location; int msix_pba_bar; } ;
struct TYPE_2__ {struct pcicfg_msix msix; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef int device_t ;


 struct pci_devinfo* device_get_ivars (int ) ;
 scalar_t__ pci_do_msix ;

int
pci_msix_pba_bar_method(device_t dev, device_t child)
{
 struct pci_devinfo *dinfo = device_get_ivars(child);
 struct pcicfg_msix *msix = &dinfo->cfg.msix;

 if (pci_do_msix && msix->msix_location != 0)
  return (msix->msix_pba_bar);
 return (-1);
}
