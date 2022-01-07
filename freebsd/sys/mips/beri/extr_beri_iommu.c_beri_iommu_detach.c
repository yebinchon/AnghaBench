
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beri_iommu_softc {int res; } ;
typedef int device_t ;


 int beri_iommu_spec ;
 int bus_release_resources (int ,int ,int ) ;
 struct beri_iommu_softc* device_get_softc (int ) ;

__attribute__((used)) static int
beri_iommu_detach(device_t dev)
{
 struct beri_iommu_softc *sc;

 sc = device_get_softc(dev);

 bus_release_resources(dev, beri_iommu_spec, sc->res);

 return (0);
}
