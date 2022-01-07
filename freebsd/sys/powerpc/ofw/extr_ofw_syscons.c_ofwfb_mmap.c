
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int vm_ooffset_t ;
typedef int vm_memattr_t ;
typedef int video_adapter_t ;
struct ofwfb_softc {int sc_num_pciaddrs; int sc_stride; int sc_height; int sc_addr; TYPE_1__* sc_pciaddrs; } ;
struct TYPE_2__ {int phys_lo; int size_lo; int phys_hi; } ;


 int EINVAL ;
 int ENOMEM ;
 int OFW_PCI_PHYS_HI_PREFETCHABLE ;
 int VM_MEMATTR_WRITE_COMBINING ;
 scalar_t__ ofwfb_ignore_mmap_checks ;

__attribute__((used)) static int
ofwfb_mmap(video_adapter_t *adp, vm_ooffset_t offset, vm_paddr_t *paddr,
    int prot, vm_memattr_t *memattr)
{
 struct ofwfb_softc *sc;
 int i;

 sc = (struct ofwfb_softc *)adp;





 for (i = 0; i < sc->sc_num_pciaddrs; i++)
   if (offset >= sc->sc_pciaddrs[i].phys_lo &&
     offset < (sc->sc_pciaddrs[i].phys_lo + sc->sc_pciaddrs[i].size_lo))
  {




   if (sc->sc_pciaddrs[i].phys_hi &
       OFW_PCI_PHYS_HI_PREFETCHABLE)
    *memattr = VM_MEMATTR_WRITE_COMBINING;

   *paddr = offset;
   return (0);
  }




 if (ofwfb_ignore_mmap_checks) {
  *paddr = offset;
  return (0);
 }





 if (offset < sc->sc_stride*sc->sc_height) {
  *paddr = sc->sc_addr + offset;
  return (0);
 }




 if (sc->sc_num_pciaddrs == 0)
  return (ENOMEM);

 return (EINVAL);
}
