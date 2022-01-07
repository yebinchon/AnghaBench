
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u_int ;
struct pcicfg_msix {int msix_msgnum; int msix_table_res; scalar_t__ msix_table_offset; } ;
struct TYPE_2__ {struct pcicfg_msix msix; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef int device_t ;


 int KASSERT (int,char*) ;
 scalar_t__ PCIM_MSIX_VCTRL_MASK ;
 scalar_t__ bus_read_4 (int ,scalar_t__) ;
 int bus_write_4 (int ,scalar_t__,scalar_t__) ;
 struct pci_devinfo* device_get_ivars (int ) ;

void
pci_mask_msix(device_t dev, u_int index)
{
 struct pci_devinfo *dinfo = device_get_ivars(dev);
 struct pcicfg_msix *msix = &dinfo->cfg.msix;
 uint32_t offset, val;

 KASSERT(msix->msix_msgnum > index, ("bogus index"));
 offset = msix->msix_table_offset + index * 16 + 12;
 val = bus_read_4(msix->msix_table_res, offset);
 val |= PCIM_MSIX_VCTRL_MASK;





 bus_write_4(msix->msix_table_res, offset, val);
}
