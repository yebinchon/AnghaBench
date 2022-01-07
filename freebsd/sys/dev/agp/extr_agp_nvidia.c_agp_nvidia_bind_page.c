
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef size_t u_int32_t ;
struct agp_nvidia_softc {int pg_offset; TYPE_1__* gatt; } ;
typedef int device_t ;
struct TYPE_2__ {int ag_entries; int* ag_virtual; } ;


 int AGP_PAGE_SHIFT ;
 int EINVAL ;
 struct agp_nvidia_softc* device_get_softc (int ) ;

__attribute__((used)) static int
agp_nvidia_bind_page(device_t dev, vm_offset_t offset, vm_offset_t physical)
{
 struct agp_nvidia_softc *sc = device_get_softc(dev);
 u_int32_t index;

 if (offset >= (sc->gatt->ag_entries << AGP_PAGE_SHIFT))
  return (EINVAL);

 index = (sc->pg_offset + offset) >> AGP_PAGE_SHIFT;
 sc->gatt->ag_virtual[index] = physical | 1;

 return (0);
}
