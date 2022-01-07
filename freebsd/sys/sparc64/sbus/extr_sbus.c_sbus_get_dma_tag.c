
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbus_softc {int sc_cdmatag; } ;
typedef int device_t ;
typedef int bus_dma_tag_t ;


 struct sbus_softc* device_get_softc (int ) ;

__attribute__((used)) static bus_dma_tag_t
sbus_get_dma_tag(device_t bus, device_t child)
{
 struct sbus_softc *sc;

 sc = device_get_softc(bus);
 return (sc->sc_cdmatag);
}
