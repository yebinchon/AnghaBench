
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct agp_i810_softc {int bdev; int sc_bios_allocated_flush_page; int * sc_flush_page_res; } ;
typedef int device_t ;


 int AGP_I965_IFPADDR ;
 int agp_i915_chipset_flush_free_page (int ) ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
agp_i965_chipset_flush_teardown(device_t dev)
{
 struct agp_i810_softc *sc;
 uint32_t temp_lo;

 sc = device_get_softc(dev);
 if (sc->sc_flush_page_res == ((void*)0))
  return;
 if (!sc->sc_bios_allocated_flush_page) {
  temp_lo = pci_read_config(sc->bdev, AGP_I965_IFPADDR, 4);
  temp_lo &= ~1;
  pci_write_config(sc->bdev, AGP_I965_IFPADDR, temp_lo, 4);
 }
 agp_i915_chipset_flush_free_page(dev);
}
