
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int segs ;
typedef TYPE_1__* bus_dmamap_t ;
typedef TYPE_2__* bus_dma_tag_t ;
typedef int bus_dma_segment_t ;
struct TYPE_6__ {int iommu_cookie; int boundary; int alignment; int highaddr; int lowaddr; int * iommu; } ;
struct TYPE_5__ {int nsegs; int * segments; } ;


 int IOMMU_MAP (int *,int *,int*,int ,int ,int ,int ,int ) ;
 int memcpy (int *,int *,int) ;

bus_dma_segment_t *
_bus_dmamap_complete(bus_dma_tag_t dmat, bus_dmamap_t map,
       bus_dma_segment_t *segs, int nsegs, int error)
{

 map->nsegs = nsegs;
 if (segs != ((void*)0))
  memcpy(map->segments, segs, map->nsegs*sizeof(segs[0]));
 if (dmat->iommu != ((void*)0))
  IOMMU_MAP(dmat->iommu, map->segments, &map->nsegs,
      dmat->lowaddr, dmat->highaddr, dmat->alignment,
      dmat->boundary, dmat->iommu_cookie);

 if (segs != ((void*)0))
  memcpy(segs, map->segments, map->nsegs*sizeof(segs[0]));
 else
  segs = map->segments;

 return (segs);
}
