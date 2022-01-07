
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_softc {int sc_dma_tag; } ;
typedef int device_t ;
typedef int bus_dma_tag_t ;


 struct pci_softc* device_get_softc (int ) ;

bus_dma_tag_t
pci_get_dma_tag(device_t bus, device_t dev)
{
 struct pci_softc *sc = device_get_softc(bus);

 return (sc->sc_dma_tag);
}
