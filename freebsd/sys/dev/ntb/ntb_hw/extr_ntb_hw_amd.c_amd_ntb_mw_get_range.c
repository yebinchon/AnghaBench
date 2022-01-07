
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
struct amd_ntb_softc {TYPE_1__* hw_info; struct amd_ntb_pci_bar_info* bar_info; } ;
struct amd_ntb_pci_bar_info {size_t size; int vbase; int pbase; } ;
typedef int device_t ;
typedef int caddr_t ;
typedef int bus_addr_t ;
struct TYPE_2__ {unsigned int mw_count; unsigned int bar_start_idx; int quirks; } ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int EINVAL ;
 int QUIRK_MW0_32BIT ;
 struct amd_ntb_softc* device_get_softc (int ) ;

__attribute__((used)) static int
amd_ntb_mw_get_range(device_t dev, unsigned mw_idx, vm_paddr_t *base,
    caddr_t *vbase, size_t *size, size_t *align, size_t *align_size,
    bus_addr_t *plimit)
{
 struct amd_ntb_softc *ntb = device_get_softc(dev);
 struct amd_ntb_pci_bar_info *bar_info;

 if (mw_idx < 0 || mw_idx >= ntb->hw_info->mw_count)
  return (EINVAL);

 bar_info = &ntb->bar_info[ntb->hw_info->bar_start_idx + mw_idx];

 if (base != ((void*)0))
  *base = bar_info->pbase;

 if (vbase != ((void*)0))
  *vbase = bar_info->vbase;

 if (align != ((void*)0))
  *align = bar_info->size;

 if (size != ((void*)0))
  *size = bar_info->size;

 if (align_size != ((void*)0))
  *align_size = 1;

 if (plimit != ((void*)0)) {





  if ((mw_idx == 0) && (ntb->hw_info->quirks & QUIRK_MW0_32BIT))
   *plimit = BUS_SPACE_MAXADDR_32BIT;
  else
   *plimit = BUS_SPACE_MAXADDR;
 }

 return (0);
}
