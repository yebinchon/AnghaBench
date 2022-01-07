
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct agp_i810_softc {int gtt_mappable_entries; } ;
typedef int device_t ;


 int AGP_GET_APERTURE (int ) ;
 int AGP_PAGE_SHIFT ;
 struct agp_i810_softc* device_get_softc (int ) ;

__attribute__((used)) static int
agp_i915_get_gtt_mappable_entries(device_t dev)
{
 struct agp_i810_softc *sc;
 uint32_t ap;

 sc = device_get_softc(dev);
 ap = AGP_GET_APERTURE(dev);
 sc->gtt_mappable_entries = ap >> AGP_PAGE_SHIFT;
 return (0);
}
