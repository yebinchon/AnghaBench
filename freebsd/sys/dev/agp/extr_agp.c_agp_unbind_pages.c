
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
struct agp_softc {int as_lock; } ;
typedef int device_t ;


 int AGP_FLUSH_TLB (int ) ;
 int AGP_PAGE_SIZE ;
 int AGP_UNBIND_PAGE (int ,int) ;
 int EINVAL ;
 struct agp_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
agp_unbind_pages(device_t dev, vm_size_t size, vm_offset_t offset)
{
 struct agp_softc *sc;
 vm_offset_t i;

 if ((size & (AGP_PAGE_SIZE - 1)) != 0 ||
     (offset & (AGP_PAGE_SIZE - 1)) != 0)
  return (EINVAL);

 sc = device_get_softc(dev);

 mtx_lock(&sc->as_lock);
 for (i = 0; i < size; i += AGP_PAGE_SIZE)
  AGP_UNBIND_PAGE(dev, offset + i);

 AGP_FLUSH_TLB(dev);

 mtx_unlock(&sc->as_lock);
 return (0);
}
