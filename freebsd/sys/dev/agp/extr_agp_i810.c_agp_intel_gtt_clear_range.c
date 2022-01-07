
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct agp_i810_softc {TYPE_2__* match; } ;
typedef int device_t ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* read_gtt_pte ) (int ,scalar_t__) ;int (* install_gtt_pte ) (int ,scalar_t__,int ,int ) ;} ;


 int VM_PAGE_TO_PHYS (int ) ;
 int bogus_page ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int stub1 (int ,scalar_t__,int ,int ) ;
 int stub2 (int ,scalar_t__) ;

void
agp_intel_gtt_clear_range(device_t dev, u_int first_entry, u_int num_entries)
{
 struct agp_i810_softc *sc;
 u_int i;

 sc = device_get_softc(dev);
 for (i = 0; i < num_entries; i++)
  sc->match->driver->install_gtt_pte(dev, first_entry + i,
      VM_PAGE_TO_PHYS(bogus_page), 0);
 sc->match->driver->read_gtt_pte(dev, first_entry + num_entries - 1);
}
