
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int dev; int parent_dma_tag; } ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int ENOMEM ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;

int
sfxge_dma_init(struct sfxge_softc *sc)
{


 if (bus_dma_tag_create(bus_get_dma_tag(sc->dev),
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     BUS_SPACE_UNRESTRICTED,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->parent_dma_tag) != 0) {
  device_printf(sc->dev, "Cannot allocate parent DMA tag\n");
  return (ENOMEM);
 }

 return (0);
}
