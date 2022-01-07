
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vm_offset_t ;
struct agp_ati_softc {size_t ag_entries; size_t* ag_virtual; } ;
typedef int device_t ;


 size_t AGP_PAGE_SHIFT ;
 int EINVAL ;
 struct agp_ati_softc* device_get_softc (int ) ;

__attribute__((used)) static int
agp_ati_bind_page(device_t dev, vm_offset_t offset, vm_offset_t physical)
{
 struct agp_ati_softc *sc = device_get_softc(dev);

 if (offset >= (sc->ag_entries << AGP_PAGE_SHIFT))
  return EINVAL;

 sc->ag_virtual[offset >> AGP_PAGE_SHIFT] = physical | 1;

 return 0;
}
