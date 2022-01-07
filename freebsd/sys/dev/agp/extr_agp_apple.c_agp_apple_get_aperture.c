
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct agp_apple_softc {int aperture; } ;
typedef int device_t ;


 struct agp_apple_softc* device_get_softc (int ) ;

__attribute__((used)) static uint32_t
agp_apple_get_aperture(device_t dev)
{
 struct agp_apple_softc *sc = device_get_softc(dev);

 return (sc->aperture);
}
