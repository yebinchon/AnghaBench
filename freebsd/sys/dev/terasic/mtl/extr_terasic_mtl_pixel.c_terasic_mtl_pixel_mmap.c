
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef int vm_memattr_t ;
struct terasic_mtl_softc {int mtl_pixel_res; } ;
struct cdev {struct terasic_mtl_softc* si_drv1; } ;


 int ENODEV ;
 scalar_t__ PAGE_SIZE ;
 int VM_MEMATTR_UNCACHEABLE ;
 scalar_t__ rman_get_size (int ) ;
 scalar_t__ rman_get_start (int ) ;
 scalar_t__ trunc_page (scalar_t__) ;

__attribute__((used)) static int
terasic_mtl_pixel_mmap(struct cdev *dev, vm_ooffset_t offset,
    vm_paddr_t *paddr, int nprot, vm_memattr_t *memattr)
{
 struct terasic_mtl_softc *sc;
 int error;

 sc = dev->si_drv1;
 error = 0;
 if (trunc_page(offset) == offset &&
     rman_get_size(sc->mtl_pixel_res) >= offset + PAGE_SIZE) {
  *paddr = rman_get_start(sc->mtl_pixel_res) + offset;
  *memattr = VM_MEMATTR_UNCACHEABLE;
 } else
  error = ENODEV;
 return (error);
}
