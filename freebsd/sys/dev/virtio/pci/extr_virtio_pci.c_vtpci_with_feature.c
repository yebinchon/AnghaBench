
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vtpci_softc {int vtpci_features; } ;
typedef int device_t ;


 struct vtpci_softc* device_get_softc (int ) ;

__attribute__((used)) static int
vtpci_with_feature(device_t dev, uint64_t feature)
{
 struct vtpci_softc *sc;

 sc = device_get_softc(dev);

 return ((sc->vtpci_features & feature) != 0);
}
