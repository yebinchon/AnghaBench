
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dcons_softc {int dummy; } ;
struct TYPE_2__ {int dma_map; int * dma_tag; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREWRITE ;
 int bus_dmamap_sync (int *,int ,int ) ;
 int dcons_putc (struct dcons_softc*,int) ;
 TYPE_1__ dg ;

__attribute__((used)) static void
dcons_os_putc(struct dcons_softc *dc, int c)
{
 if (dg.dma_tag != ((void*)0))
  bus_dmamap_sync(dg.dma_tag, dg.dma_map, BUS_DMASYNC_POSTWRITE);

 dcons_putc(dc, c);

 if (dg.dma_tag != ((void*)0))
  bus_dmamap_sync(dg.dma_tag, dg.dma_map, BUS_DMASYNC_PREWRITE);
}
