
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_intel_softc {int current_aperture; } ;
typedef int device_t ;


 int AGP_SET_APERTURE (int ,int ) ;
 int agp_intel_commit_gatt (int ) ;
 int bus_generic_resume (int ) ;
 struct agp_intel_softc* device_get_softc (int ) ;

__attribute__((used)) static int
agp_intel_resume(device_t dev)
{
 struct agp_intel_softc *sc;
 sc = device_get_softc(dev);

 AGP_SET_APERTURE(dev, sc->current_aperture);
 agp_intel_commit_gatt(dev);
 return (bus_generic_resume(dev));
}
