
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef int vm_memattr_t ;
struct creator_softc {scalar_t__ sc_reg_size; scalar_t__* sc_bh; } ;
struct cdev {struct creator_softc* si_drv1; } ;
struct TYPE_2__ {scalar_t__ virt; scalar_t__ size; scalar_t__ phys; } ;


 int CREATOR_FB_MAP_SIZE ;
 int EINVAL ;
 TYPE_1__* creator_fb_map ;

__attribute__((used)) static int
creator_fb_mmap(struct cdev *dev, vm_ooffset_t offset, vm_paddr_t *paddr,
    int prot, vm_memattr_t *memattr)
{
 struct creator_softc *sc;
 int i;





 sc = dev->si_drv1;
 for (i = 0; i < CREATOR_FB_MAP_SIZE; i++) {
  if (offset >= creator_fb_map[i].virt &&
      offset < creator_fb_map[i].virt + creator_fb_map[i].size) {
   offset += creator_fb_map[i].phys -
       creator_fb_map[i].virt;
   if (offset >= sc->sc_reg_size)
    return (EINVAL);
   *paddr = sc->sc_bh[0] + offset;
   return (0);
  }
 }
 return (EINVAL);
}
