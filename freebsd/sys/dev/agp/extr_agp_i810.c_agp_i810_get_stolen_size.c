
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_i810_softc {scalar_t__ stolen_size; scalar_t__ stolen; } ;
typedef int device_t ;


 struct agp_i810_softc* device_get_softc (int ) ;

__attribute__((used)) static int
agp_i810_get_stolen_size(device_t dev)
{
 struct agp_i810_softc *sc;

 sc = device_get_softc(dev);
 sc->stolen = 0;
 sc->stolen_size = 0;
 return (0);
}
