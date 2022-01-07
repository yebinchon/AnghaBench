
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_softc {int parent_dev; } ;
typedef int device_t ;
typedef int bus_dma_tag_t ;


 int bus_get_dma_tag (int ) ;
 struct bhndb_softc* device_get_softc (int ) ;

__attribute__((used)) static bus_dma_tag_t
bhndb_get_dma_tag(device_t dev, device_t child)
{
 struct bhndb_softc *sc = device_get_softc(dev);
 return (bus_get_dma_tag(sc->parent_dev));
}
