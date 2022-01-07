
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_gtt {scalar_t__ gma_bus_addr; int scratch_page_dma; scalar_t__ do_idle_maps; int gtt_mappable_entries; int gtt_total_entries; int stolen_size; } ;
struct TYPE_2__ {int * as_aperture; } ;
struct agp_i810_softc {TYPE_1__ agp; int gtt_mappable_entries; int gtt_total_entries; int stolen_size; } ;
typedef int device_t ;


 int VM_PAGE_TO_PHYS (int ) ;
 int bogus_page ;
 struct agp_i810_softc* device_get_softc (int ) ;
 scalar_t__ rman_get_start (int *) ;

struct intel_gtt
agp_intel_gtt_get(device_t dev)
{
 struct agp_i810_softc *sc;
 struct intel_gtt res;

 sc = device_get_softc(dev);
 res.stolen_size = sc->stolen_size;
 res.gtt_total_entries = sc->gtt_total_entries;
 res.gtt_mappable_entries = sc->gtt_mappable_entries;
 res.do_idle_maps = 0;
 res.scratch_page_dma = VM_PAGE_TO_PHYS(bogus_page);
 if (sc->agp.as_aperture != ((void*)0))
  res.gma_bus_addr = rman_get_start(sc->agp.as_aperture);
 else
  res.gma_bus_addr = 0;
 return (res);
}
