
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic_softc {int dma_size; int buf_base; int buf_base_phys; int dma_map; int dma_tag; int dev; } ;
typedef int device_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int aic_dmamap_cb ;
 int bus_dma_tag_create (int ,int,int,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,int *,int) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int bzero (int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
aic_dma_setup(struct aic_softc *sc)
{
 device_t dev;
 int err;

 dev = sc->dev;


 sc->dma_size = 131072;





 err = bus_dma_tag_create(
     bus_get_dma_tag(sc->dev),
     4, sc->dma_size,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     sc->dma_size, 1,
     sc->dma_size, 0,
     ((void*)0), ((void*)0),
     &sc->dma_tag);
 if (err) {
  device_printf(dev, "cannot create bus dma tag\n");
  return (-1);
 }

 err = bus_dmamem_alloc(sc->dma_tag, (void **)&sc->buf_base,
     BUS_DMA_WAITOK | BUS_DMA_COHERENT, &sc->dma_map);
 if (err) {
  device_printf(dev, "cannot allocate memory\n");
  return (-1);
 }

 err = bus_dmamap_load(sc->dma_tag, sc->dma_map, sc->buf_base,
     sc->dma_size, aic_dmamap_cb, &sc->buf_base_phys, BUS_DMA_WAITOK);
 if (err) {
  device_printf(dev, "cannot load DMA map\n");
  return (-1);
 }

 bzero(sc->buf_base, sc->dma_size);

 return (0);
}
