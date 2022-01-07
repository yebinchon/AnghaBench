
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef int vm_memattr_t ;
struct cdev {int si_drv1; } ;
struct agp_softc {int * as_aperture; } ;
typedef int device_t ;


 scalar_t__ AGP_GET_APERTURE (int ) ;
 struct agp_softc* device_get_softc (int ) ;
 scalar_t__ rman_get_start (int *) ;

__attribute__((used)) static int
agp_mmap(struct cdev *kdev, vm_ooffset_t offset, vm_paddr_t *paddr,
    int prot, vm_memattr_t *memattr)
{
 device_t dev = kdev->si_drv1;
 struct agp_softc *sc = device_get_softc(dev);

 if (offset > AGP_GET_APERTURE(dev))
  return -1;
 if (sc->as_aperture == ((void*)0))
  return -1;
 *paddr = rman_get_start(sc->as_aperture) + offset;
 return 0;
}
