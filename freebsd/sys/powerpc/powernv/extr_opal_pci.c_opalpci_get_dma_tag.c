
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sc_dmat; } ;
struct opalpci_softc {TYPE_1__ ofw_sc; } ;
typedef int device_t ;
typedef int bus_dma_tag_t ;


 struct opalpci_softc* device_get_softc (int ) ;

__attribute__((used)) static bus_dma_tag_t
opalpci_get_dma_tag(device_t dev, device_t child)
{
 struct opalpci_softc *sc;

 sc = device_get_softc(dev);
 return (sc->ofw_sc.sc_dmat);
}
