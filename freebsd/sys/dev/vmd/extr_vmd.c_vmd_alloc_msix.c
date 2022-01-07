
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmd_softc {int vmd_flags; } ;
typedef int device_t ;


 int ENXIO ;
 int PCIB_ALLOC_MSIX (int ,int ,int*) ;
 int PCIB_DISABLE_MSIX ;
 int device_get_parent (int ) ;
 struct vmd_softc* device_get_softc (int ) ;

__attribute__((used)) static int
vmd_alloc_msix(device_t pcib, device_t dev, int *irq)
{
 struct vmd_softc *sc = device_get_softc(pcib);
 device_t bus;
 int ret;

 if (sc->vmd_flags & PCIB_DISABLE_MSIX)
  return (ENXIO);
 bus = device_get_parent(pcib);
 ret = PCIB_ALLOC_MSIX(device_get_parent(bus), dev, irq);
        return (ret);
}
