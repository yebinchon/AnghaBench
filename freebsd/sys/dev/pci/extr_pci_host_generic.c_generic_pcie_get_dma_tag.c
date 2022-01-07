
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pcie_core_softc {int dmat; } ;
typedef int device_t ;
typedef int bus_dma_tag_t ;


 struct generic_pcie_core_softc* device_get_softc (int ) ;

__attribute__((used)) static bus_dma_tag_t
generic_pcie_get_dma_tag(device_t dev, device_t child)
{
 struct generic_pcie_core_softc *sc;

 sc = device_get_softc(dev);
 return (sc->dmat);
}
