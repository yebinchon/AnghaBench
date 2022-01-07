
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdmatest_softc {int dst_dma_tag; int dst_dma_map; int dst; int src_dma_tag; int src_dma_map; int src; } ;
typedef int device_t ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;
 struct xdmatest_softc* device_get_softc (int ) ;

__attribute__((used)) static int
xdmatest_detach(device_t dev)
{
 struct xdmatest_softc *sc;

 sc = device_get_softc(dev);

 bus_dmamap_unload(sc->src_dma_tag, sc->src_dma_map);
 bus_dmamem_free(sc->src_dma_tag, sc->src, sc->src_dma_map);
 bus_dma_tag_destroy(sc->src_dma_tag);

 bus_dmamap_unload(sc->dst_dma_tag, sc->dst_dma_map);
 bus_dmamem_free(sc->dst_dma_tag, sc->dst, sc->dst_dma_map);
 bus_dma_tag_destroy(sc->dst_dma_tag);

 return (0);
}
