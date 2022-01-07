
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bounce_page {int dummy; } ;
typedef TYPE_1__* bus_dmamap_t ;
typedef TYPE_2__* bus_dma_tag_t ;
struct TYPE_7__ {int iommu_cookie; scalar_t__ iommu; } ;
struct TYPE_6__ {int bpages; scalar_t__ nsegs; int segments; } ;


 int IOMMU_UNMAP (scalar_t__,int ,scalar_t__,int ) ;
 struct bounce_page* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int free_bounce_page (TYPE_2__*,struct bounce_page*) ;
 int links ;

void
bus_dmamap_unload(bus_dma_tag_t dmat, bus_dmamap_t map)
{
 struct bounce_page *bpage;

 if (dmat->iommu) {
  IOMMU_UNMAP(dmat->iommu, map->segments, map->nsegs, dmat->iommu_cookie);
  map->nsegs = 0;
 }

 while ((bpage = STAILQ_FIRST(&map->bpages)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&map->bpages, links);
  free_bounce_page(dmat, bpage);
 }
}
