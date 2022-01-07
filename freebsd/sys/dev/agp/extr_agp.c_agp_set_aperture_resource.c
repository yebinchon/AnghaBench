
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_softc {int as_aperture_rid; } ;
typedef int device_t ;


 struct agp_softc* device_get_softc (int ) ;

void
agp_set_aperture_resource(device_t dev, int rid)
{
 struct agp_softc *sc = device_get_softc(dev);

 sc->as_aperture_rid = rid;
}
