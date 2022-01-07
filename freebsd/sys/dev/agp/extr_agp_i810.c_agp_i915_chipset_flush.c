
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct agp_i810_softc {scalar_t__ sc_flush_page_vaddr; } ;
typedef int device_t ;


 struct agp_i810_softc* device_get_softc (int ) ;

__attribute__((used)) static void
agp_i915_chipset_flush(device_t dev)
{
 struct agp_i810_softc *sc;

 sc = device_get_softc(dev);
 *(uint32_t *)sc->sc_flush_page_vaddr = 1;
}
