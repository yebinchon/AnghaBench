
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pm_segtab; } ;
struct xdma_iommu {TYPE_1__ p; } ;
struct beri_iommu_softc {int dummy; } ;
typedef int device_t ;


 int beri_iommu_set_base (struct beri_iommu_softc*,uintptr_t) ;
 struct beri_iommu_softc* device_get_softc (int ) ;

__attribute__((used)) static int
beri_iommu_init(device_t dev, struct xdma_iommu *xio)
{
 struct beri_iommu_softc *sc;

 sc = device_get_softc(dev);

 beri_iommu_set_base(sc, (uintptr_t)xio->p.pm_segtab);

 return (0);
}
