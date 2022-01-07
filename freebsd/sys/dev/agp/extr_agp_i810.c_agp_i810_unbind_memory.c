
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
struct agp_memory {int am_type; int am_size; int am_offset; scalar_t__ am_is_bound; } ;
struct TYPE_4__ {int as_lock; } ;
struct agp_i810_softc {TYPE_3__* match; TYPE_1__ agp; } ;
typedef int device_t ;
struct TYPE_6__ {TYPE_2__* driver; } ;
struct TYPE_5__ {scalar_t__ chiptype; int (* install_gtt_pte ) (int ,int,int ,int ) ;} ;


 int AGP_PAGE_SHIFT ;
 int AGP_PAGE_SIZE ;
 scalar_t__ CHIP_I810 ;
 int EINVAL ;
 int agp_generic_unbind_memory (int ,struct agp_memory*) ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (int ,int,int ,int ) ;
 int stub2 (int ,int,int ,int ) ;

__attribute__((used)) static int
agp_i810_unbind_memory(device_t dev, struct agp_memory *mem)
{
 struct agp_i810_softc *sc;
 vm_offset_t i;

 sc = device_get_softc(dev);

 if (mem->am_type == 2 && mem->am_size != AGP_PAGE_SIZE) {
  mtx_lock(&sc->agp.as_lock);
  if (!mem->am_is_bound) {
   mtx_unlock(&sc->agp.as_lock);
   return (EINVAL);
  }

  for (i = 0; i < mem->am_size; i += AGP_PAGE_SIZE) {
   sc->match->driver->install_gtt_pte(dev,
       (mem->am_offset + i) >> AGP_PAGE_SHIFT, 0, 0);
  }
  mem->am_is_bound = 0;
  mtx_unlock(&sc->agp.as_lock);
  return (0);
 }

 if (mem->am_type != 1)
  return (agp_generic_unbind_memory(dev, mem));

 if (sc->match->driver->chiptype != CHIP_I810)
  return (EINVAL);
 for (i = 0; i < mem->am_size; i += AGP_PAGE_SIZE) {
  sc->match->driver->install_gtt_pte(dev, i >> AGP_PAGE_SHIFT,
      0, 0);
 }
 return (0);
}
