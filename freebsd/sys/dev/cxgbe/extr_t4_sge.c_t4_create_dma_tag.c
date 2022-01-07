
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dev; int dmat; } ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE ;
 int BUS_SPACE_UNRESTRICTED ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*,int) ;

int
t4_create_dma_tag(struct adapter *sc)
{
 int rc;

 rc = bus_dma_tag_create(bus_get_dma_tag(sc->dev), 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), BUS_SPACE_MAXSIZE,
     BUS_SPACE_UNRESTRICTED, BUS_SPACE_MAXSIZE, BUS_DMA_ALLOCNOW, ((void*)0),
     ((void*)0), &sc->dmat);
 if (rc != 0) {
  device_printf(sc->dev,
      "failed to create main DMA tag: %d\n", rc);
 }

 return (rc);
}
