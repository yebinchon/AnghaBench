
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
struct agp_i810_softc {int sc_flush_page_rid; int sc_flush_page_vaddr; int * sc_flush_page_res; } ;
typedef int device_t ;


 int * BUS_ALLOC_RESOURCE (int ,int ,int ,int*,scalar_t__,scalar_t__,int ,int ) ;
 int EINVAL ;
 int PAGE_SIZE ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 int device_get_parent (int ) ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int ,...) ;
 scalar_t__ rman_get_start (int *) ;
 int rman_get_virtual (int *) ;

__attribute__((used)) static int
agp_i915_chipset_flush_alloc_page(device_t dev, uint64_t start, uint64_t end)
{
 struct agp_i810_softc *sc;
 device_t vga;

 sc = device_get_softc(dev);
 vga = device_get_parent(dev);
 sc->sc_flush_page_rid = 100;
 sc->sc_flush_page_res = BUS_ALLOC_RESOURCE(device_get_parent(vga), dev,
     SYS_RES_MEMORY, &sc->sc_flush_page_rid, start, end, PAGE_SIZE,
     RF_ACTIVE);
 if (sc->sc_flush_page_res == ((void*)0)) {
  device_printf(dev, "Failed to allocate flush page at 0x%jx\n",
      (uintmax_t)start);
  return (EINVAL);
 }
 sc->sc_flush_page_vaddr = rman_get_virtual(sc->sc_flush_page_res);
 if (bootverbose) {
  device_printf(dev, "Allocated flush page phys 0x%jx virt %p\n",
      (uintmax_t)rman_get_start(sc->sc_flush_page_res),
      sc->sc_flush_page_vaddr);
 }
 return (0);
}
