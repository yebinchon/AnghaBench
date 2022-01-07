
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
struct ntb_softc {unsigned int b2b_mw_idx; size_t b2b_off; struct ntb_pci_bar_info* bar_info; } ;
struct ntb_pci_bar_info {size_t size; scalar_t__ vbase; scalar_t__ pbase; } ;
typedef enum ntb_bar { ____Placeholder_ntb_bar } ntb_bar ;
typedef int device_t ;
typedef scalar_t__ caddr_t ;
typedef int bus_addr_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int EINVAL ;
 int KASSERT (int,char*) ;
 scalar_t__ bar_is_64bit (struct ntb_softc*,int) ;
 struct ntb_softc* device_get_softc (int ) ;
 unsigned int intel_ntb_mw_count (int ) ;
 int intel_ntb_mw_to_bar (struct ntb_softc*,unsigned int) ;
 unsigned int intel_ntb_user_mw_to_idx (struct ntb_softc*,unsigned int) ;

__attribute__((used)) static int
intel_ntb_mw_get_range(device_t dev, unsigned mw_idx, vm_paddr_t *base,
    caddr_t *vbase, size_t *size, size_t *align, size_t *align_size,
    bus_addr_t *plimit)
{
 struct ntb_softc *ntb = device_get_softc(dev);
 struct ntb_pci_bar_info *bar;
 bus_addr_t limit;
 size_t bar_b2b_off;
 enum ntb_bar bar_num;

 if (mw_idx >= intel_ntb_mw_count(dev))
  return (EINVAL);
 mw_idx = intel_ntb_user_mw_to_idx(ntb, mw_idx);

 bar_num = intel_ntb_mw_to_bar(ntb, mw_idx);
 bar = &ntb->bar_info[bar_num];
 bar_b2b_off = 0;
 if (mw_idx == ntb->b2b_mw_idx) {
  KASSERT(ntb->b2b_off != 0,
      ("user shouldn't get non-shared b2b mw"));
  bar_b2b_off = ntb->b2b_off;
 }

 if (bar_is_64bit(ntb, bar_num))
  limit = BUS_SPACE_MAXADDR;
 else
  limit = BUS_SPACE_MAXADDR_32BIT;

 if (base != ((void*)0))
  *base = bar->pbase + bar_b2b_off;
 if (vbase != ((void*)0))
  *vbase = bar->vbase + bar_b2b_off;
 if (size != ((void*)0))
  *size = bar->size - bar_b2b_off;
 if (align != ((void*)0))
  *align = bar->size;
 if (align_size != ((void*)0))
  *align_size = 1;
 if (plimit != ((void*)0))
  *plimit = limit;
 return (0);
}
