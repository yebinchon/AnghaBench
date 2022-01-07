
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dcons_softc {int dummy; } ;
struct TYPE_2__ {int dma_map; int * dma_tag; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 int bus_dmamap_sync (int *,int ,int ) ;
 int dcons_check_break (struct dcons_softc*,int ) ;
 int dcons_checkc (struct dcons_softc*) ;
 TYPE_1__ dg ;

__attribute__((used)) static int
dcons_os_checkc_nopoll(struct dcons_softc *dc)
{
 int c;

 if (dg.dma_tag != ((void*)0))
  bus_dmamap_sync(dg.dma_tag, dg.dma_map, BUS_DMASYNC_POSTREAD);

 c = dcons_check_break(dc, dcons_checkc(dc));

 if (dg.dma_tag != ((void*)0))
  bus_dmamap_sync(dg.dma_tag, dg.dma_map, BUS_DMASYNC_PREREAD);

 return (c);
}
