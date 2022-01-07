
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; int tx_dmat; int parent_dmat; int rx_jumbo_dmat; int rx_dmat; } ;
typedef TYPE_1__ adapter_t ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int ENOMEM ;
 int MCLBYTES ;
 int MJUM16BYTES ;
 int TX_MAX_SEGS ;
 int TX_MAX_SIZE ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;

int
t3_sge_alloc(adapter_t *sc)
{


 if (bus_dma_tag_create( bus_get_dma_tag(sc->dev),
    1, 0,
    BUS_SPACE_MAXADDR,
    BUS_SPACE_MAXADDR,
    ((void*)0), ((void*)0),
    BUS_SPACE_MAXSIZE_32BIT,
    BUS_SPACE_UNRESTRICTED,
    BUS_SPACE_MAXSIZE_32BIT,
    0,
    ((void*)0), ((void*)0),
    &sc->parent_dmat)) {
  device_printf(sc->dev, "Cannot allocate parent DMA tag\n");
  return (ENOMEM);
 }




 if (bus_dma_tag_create(sc->parent_dmat, MCLBYTES, 0, BUS_SPACE_MAXADDR,
  BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), MCLBYTES, 1,
  MCLBYTES, BUS_DMA_ALLOCNOW, ((void*)0), ((void*)0), &sc->rx_dmat)) {
  device_printf(sc->dev, "Cannot allocate RX DMA tag\n");
  return (ENOMEM);
 }




 if (bus_dma_tag_create(sc->parent_dmat, MJUM16BYTES, 0, BUS_SPACE_MAXADDR,
  BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), MJUM16BYTES, 1, MJUM16BYTES,
  BUS_DMA_ALLOCNOW, ((void*)0), ((void*)0), &sc->rx_jumbo_dmat)) {
  device_printf(sc->dev, "Cannot allocate RX jumbo DMA tag\n");
  return (ENOMEM);
 }




 if (bus_dma_tag_create(sc->parent_dmat, 1, 0, BUS_SPACE_MAXADDR,
  BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), TX_MAX_SIZE, TX_MAX_SEGS,
  TX_MAX_SIZE, BUS_DMA_ALLOCNOW,
  ((void*)0), ((void*)0), &sc->tx_dmat)) {
  device_printf(sc->dev, "Cannot allocate TX DMA tag\n");
  return (ENOMEM);
 }

 return (0);
}
