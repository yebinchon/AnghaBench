
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_i810_softc {int bdev; } ;
typedef int device_t ;


 struct agp_i810_softc* device_get_softc (int ) ;
 int intel_agp ;

device_t
intel_gtt_get_bridge_device(void)
{
 struct agp_i810_softc *sc;

 sc = device_get_softc(intel_agp);
 return (sc->bdev);
}
