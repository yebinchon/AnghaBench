
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_softc {int chan_dmat; } ;
typedef int device_t ;
typedef int bus_dma_tag_t ;


 struct hdac_softc* device_get_softc (int ) ;

__attribute__((used)) static bus_dma_tag_t
hdac_get_dma_tag(device_t dev, device_t child)
{
 struct hdac_softc *sc = device_get_softc(dev);

 return (sc->chan_dmat);
}
