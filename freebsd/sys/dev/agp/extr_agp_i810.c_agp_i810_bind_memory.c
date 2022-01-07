
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
struct agp_memory {int am_size; int am_type; int am_is_bound; int am_offset; scalar_t__ am_physical; } ;
struct TYPE_4__ {int as_lock; } ;
struct agp_i810_softc {int * sc_res; TYPE_3__* match; TYPE_1__ agp; } ;
typedef int device_t ;
struct TYPE_6__ {TYPE_2__* driver; } ;
struct TYPE_5__ {scalar_t__ chiptype; int (* install_gtt_pte ) (int ,int,scalar_t__,int ) ;} ;


 int AGP_GET_APERTURE (int ) ;
 scalar_t__ AGP_I810_GTT ;
 int AGP_PAGE_SHIFT ;
 int AGP_PAGE_SIZE ;
 scalar_t__ CHIP_I810 ;
 int EINVAL ;
 int agp_generic_bind_memory (int ,struct agp_memory*,int) ;
 int bus_write_4 (int ,scalar_t__,int) ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (int ,int,scalar_t__,int ) ;

__attribute__((used)) static int
agp_i810_bind_memory(device_t dev, struct agp_memory *mem, vm_offset_t offset)
{
 struct agp_i810_softc *sc;
 vm_offset_t i;


 if ((offset & (AGP_PAGE_SIZE - 1)) != 0 ||
     offset + mem->am_size > AGP_GET_APERTURE(dev)) {
  device_printf(dev, "binding memory at bad offset %#x\n",
      (int)offset);
  return (EINVAL);
 }

 sc = device_get_softc(dev);
 if (mem->am_type == 2 && mem->am_size != AGP_PAGE_SIZE) {
  mtx_lock(&sc->agp.as_lock);
  if (mem->am_is_bound) {
   mtx_unlock(&sc->agp.as_lock);
   return (EINVAL);
  }

  for (i = 0; i < mem->am_size; i += AGP_PAGE_SIZE) {
   sc->match->driver->install_gtt_pte(dev, (offset + i) >>
       AGP_PAGE_SHIFT, mem->am_physical + i, 0);
  }
  mem->am_offset = offset;
  mem->am_is_bound = 1;
  mtx_unlock(&sc->agp.as_lock);
  return (0);
 }

 if (mem->am_type != 1)
  return (agp_generic_bind_memory(dev, mem, offset));




 if (sc->match->driver->chiptype != CHIP_I810)
  return (EINVAL);
 for (i = 0; i < mem->am_size; i += AGP_PAGE_SIZE)
  bus_write_4(sc->sc_res[0],
      AGP_I810_GTT + (i >> AGP_PAGE_SHIFT) * 4, i | 3);

 return (0);
}
