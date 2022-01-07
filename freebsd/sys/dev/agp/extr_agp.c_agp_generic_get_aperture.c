
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct agp_softc {int as_aperture; } ;
typedef int device_t ;


 struct agp_softc* device_get_softc (int ) ;
 int rman_get_size (int ) ;

u_int32_t
agp_generic_get_aperture(device_t dev)
{
 struct agp_softc *sc = device_get_softc(dev);

 return rman_get_size(sc->as_aperture);
}
