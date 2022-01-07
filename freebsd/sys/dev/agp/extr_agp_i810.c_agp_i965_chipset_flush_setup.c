
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct agp_i810_softc {int sc_bios_allocated_flush_page; int bdev; int sc_flush_page_res; } ;
typedef int device_t ;


 scalar_t__ AGP_I965_IFPADDR ;
 scalar_t__ PAGE_SIZE ;
 int UINT32_MAX ;
 int agp_i915_chipset_flush_alloc_page (int ,int,scalar_t__) ;
 scalar_t__ bootverbose ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int ) ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int,int) ;
 int rman_get_start (int ) ;

__attribute__((used)) static int
agp_i965_chipset_flush_setup(device_t dev)
{
 struct agp_i810_softc *sc;
 uint64_t temp;
 uint32_t temp_hi, temp_lo;
 int error;

 sc = device_get_softc(dev);

 temp_hi = pci_read_config(sc->bdev, AGP_I965_IFPADDR + 4, 4);
 temp_lo = pci_read_config(sc->bdev, AGP_I965_IFPADDR, 4);

 if ((temp_lo & 1) != 0) {
  temp = ((uint64_t)temp_hi << 32) | (temp_lo & ~1);
  if (bootverbose)
   device_printf(dev,
       "Found already configured flush page at 0x%jx\n",
       (uintmax_t)temp);
  sc->sc_bios_allocated_flush_page = 1;





  error = agp_i915_chipset_flush_alloc_page(dev, temp,
      temp + PAGE_SIZE - 1);
  if (error != 0)
   return (error);
 } else {
  sc->sc_bios_allocated_flush_page = 0;
  error = agp_i915_chipset_flush_alloc_page(dev, 0, ~0);
  if (error != 0)
   return (error);
  temp = rman_get_start(sc->sc_flush_page_res);
  pci_write_config(sc->bdev, AGP_I965_IFPADDR + 4,
      (temp >> 32) & UINT32_MAX, 4);
  pci_write_config(sc->bdev, AGP_I965_IFPADDR,
      (temp & UINT32_MAX) | 1, 4);
 }
 return (0);
}
