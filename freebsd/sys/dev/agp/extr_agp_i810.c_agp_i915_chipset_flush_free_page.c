
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_i810_softc {int * sc_flush_page_res; int sc_flush_page_rid; } ;
typedef int device_t ;


 int BUS_DEACTIVATE_RESOURCE (int ,int ,int ,int ,int *) ;
 int BUS_RELEASE_RESOURCE (int ,int ,int ,int ,int *) ;
 int SYS_RES_MEMORY ;
 int device_get_parent (int ) ;
 struct agp_i810_softc* device_get_softc (int ) ;

__attribute__((used)) static void
agp_i915_chipset_flush_free_page(device_t dev)
{
 struct agp_i810_softc *sc;
 device_t vga;

 sc = device_get_softc(dev);
 vga = device_get_parent(dev);
 if (sc->sc_flush_page_res == ((void*)0))
  return;
 BUS_DEACTIVATE_RESOURCE(device_get_parent(vga), dev, SYS_RES_MEMORY,
     sc->sc_flush_page_rid, sc->sc_flush_page_res);
 BUS_RELEASE_RESOURCE(device_get_parent(vga), dev, SYS_RES_MEMORY,
     sc->sc_flush_page_rid, sc->sc_flush_page_res);
}
