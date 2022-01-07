
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_mmc_softc {int sc_dma_map_err; int sc_dma_buf_map; int sc_dma_buf_tag; int sc_dev; int sc_dma_desc; int sc_dma_map; int sc_dma_tag; } ;
struct jz4780_mmc_dma_desc {int dummy; } ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int JZ_MSC_DMA_MAX_SIZE ;
 int JZ_MSC_DMA_SEGS ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct jz4780_mmc_softc*,int ) ;
 int bus_dmamem_alloc (int ,int *,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int jz4780_mmc_dma_desc_cb ;

__attribute__((used)) static int
jz4780_mmc_setup_dma(struct jz4780_mmc_softc *sc)
{
 int dma_desc_size, error;


 dma_desc_size = sizeof(struct jz4780_mmc_dma_desc) * JZ_MSC_DMA_SEGS;
 error = bus_dma_tag_create(bus_get_dma_tag(sc->sc_dev), 1, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     dma_desc_size, 1, dma_desc_size, 0, ((void*)0), ((void*)0), &sc->sc_dma_tag);
 if (error)
  return (error);
 error = bus_dmamem_alloc(sc->sc_dma_tag, &sc->sc_dma_desc,
     BUS_DMA_WAITOK | BUS_DMA_ZERO, &sc->sc_dma_map);
 if (error)
  return (error);

 error = bus_dmamap_load(sc->sc_dma_tag, sc->sc_dma_map,
     sc->sc_dma_desc, dma_desc_size, jz4780_mmc_dma_desc_cb, sc, 0);
 if (error)
  return (error);
 if (sc->sc_dma_map_err)
  return (sc->sc_dma_map_err);


 error = bus_dma_tag_create(bus_get_dma_tag(sc->sc_dev), 1, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     JZ_MSC_DMA_MAX_SIZE * JZ_MSC_DMA_SEGS, JZ_MSC_DMA_SEGS,
     JZ_MSC_DMA_MAX_SIZE, BUS_DMA_ALLOCNOW, ((void*)0), ((void*)0),
     &sc->sc_dma_buf_tag);
 if (error)
  return (error);
 error = bus_dmamap_create(sc->sc_dma_buf_tag, 0,
     &sc->sc_dma_buf_map);
 if (error)
  return (error);

 return (0);
}
