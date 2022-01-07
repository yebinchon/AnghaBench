
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct beri_iommu_softc {int * res; } ;


 int IOMMU_INVALIDATE ;
 int bus_write_8 (int ,int ,int ) ;
 int htole64 (int ) ;

__attribute__((used)) static void
beri_iommu_invalidate(struct beri_iommu_softc *sc, vm_offset_t addr)
{

 bus_write_8(sc->res[0], IOMMU_INVALIDATE, htole64(addr));
}
