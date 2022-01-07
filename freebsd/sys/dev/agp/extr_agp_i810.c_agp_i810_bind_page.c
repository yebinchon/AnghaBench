
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int u_int ;
struct agp_i810_softc {int stolen; TYPE_2__* match; TYPE_3__* gatt; } ;
typedef int intmax_t ;
typedef int device_t ;
struct TYPE_6__ {int ag_entries; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int (* install_gtt_pte ) (int ,int,int,int ) ;} ;


 int AGP_PAGE_SHIFT ;
 int EINVAL ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int stub1 (int ,int,int,int ) ;

__attribute__((used)) static int
agp_i810_bind_page(device_t dev, vm_offset_t offset, vm_offset_t physical)
{
 struct agp_i810_softc *sc = device_get_softc(dev);
 u_int index;

 if (offset >= (sc->gatt->ag_entries << AGP_PAGE_SHIFT)) {
  device_printf(dev, "failed: offset is 0x%08jx, "
      "shift is %d, entries is %d\n", (intmax_t)offset,
      AGP_PAGE_SHIFT, sc->gatt->ag_entries);
  return (EINVAL);
 }
 index = offset >> AGP_PAGE_SHIFT;
 if (sc->stolen != 0 && index < sc->stolen) {
  device_printf(dev, "trying to bind into stolen memory\n");
  return (EINVAL);
 }
 sc->match->driver->install_gtt_pte(dev, index, physical, 0);
 return (0);
}
