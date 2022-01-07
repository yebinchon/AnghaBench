
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct xdma_iommu {int dummy; } ;
struct beri_iommu_softc {int dummy; } ;
typedef int device_t ;


 int beri_iommu_invalidate (struct beri_iommu_softc*,int ) ;
 struct beri_iommu_softc* device_get_softc (int ) ;

__attribute__((used)) static int
beri_iommu_remove(device_t dev, struct xdma_iommu *xio, vm_offset_t va)
{
 struct beri_iommu_softc *sc;

 sc = device_get_softc(dev);

 beri_iommu_invalidate(sc, va);

 return (0);
}
