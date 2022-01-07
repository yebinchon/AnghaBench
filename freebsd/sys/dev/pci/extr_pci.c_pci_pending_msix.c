
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct pcicfg_msix {int msix_table_len; int msix_pba_offset; int msix_pba_res; } ;
struct TYPE_2__ {struct pcicfg_msix msix; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef int device_t ;


 int KASSERT (int,char*) ;
 int bus_read_4 (int ,int) ;
 struct pci_devinfo* device_get_ivars (int ) ;

int
pci_pending_msix(device_t dev, u_int index)
{
 struct pci_devinfo *dinfo = device_get_ivars(dev);
 struct pcicfg_msix *msix = &dinfo->cfg.msix;
 uint32_t offset, bit;

 KASSERT(msix->msix_table_len > index, ("bogus index"));
 offset = msix->msix_pba_offset + (index / 32) * 4;
 bit = 1 << index % 32;
 return (bus_read_4(msix->msix_pba_res, offset) & bit);
}
