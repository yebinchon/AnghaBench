
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t vm_offset_t ;
struct agp_amd_softc {TYPE_1__* gatt; } ;
typedef int device_t ;
struct TYPE_2__ {size_t ag_entries; scalar_t__* ag_virtual; } ;


 size_t AGP_PAGE_SHIFT ;
 int EINVAL ;
 struct agp_amd_softc* device_get_softc (int ) ;

__attribute__((used)) static int
agp_amd_unbind_page(device_t dev, vm_offset_t offset)
{
 struct agp_amd_softc *sc = device_get_softc(dev);

 if (offset >= (sc->gatt->ag_entries << AGP_PAGE_SHIFT))
  return EINVAL;

 sc->gatt->ag_virtual[offset >> AGP_PAGE_SHIFT] = 0;
 return 0;
}
