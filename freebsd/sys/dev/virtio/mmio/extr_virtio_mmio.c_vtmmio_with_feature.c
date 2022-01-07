
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vtmmio_softc {int vtmmio_features; } ;
typedef int device_t ;


 struct vtmmio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
vtmmio_with_feature(device_t dev, uint64_t feature)
{
 struct vtmmio_softc *sc;

 sc = device_get_softc(dev);

 return ((sc->vtmmio_features & feature) != 0);
}
