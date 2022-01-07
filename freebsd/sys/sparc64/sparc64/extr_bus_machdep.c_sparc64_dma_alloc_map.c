
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* bus_dmamap_t ;
typedef TYPE_2__* bus_dma_tag_t ;
typedef int bus_dma_segment_t ;
struct TYPE_7__ {int dt_nsegments; int dt_map_count; int * dt_segments; } ;
struct TYPE_6__ {int dm_reslist; } ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SLIST_INIT (int *) ;
 TYPE_1__* malloc (int,int ,int) ;

int
sparc64_dma_alloc_map(bus_dma_tag_t dmat, bus_dmamap_t *mapp)
{

 if (dmat->dt_segments == ((void*)0)) {
  dmat->dt_segments = (bus_dma_segment_t *)malloc(
      sizeof(bus_dma_segment_t) * dmat->dt_nsegments, M_DEVBUF,
      M_NOWAIT);
  if (dmat->dt_segments == ((void*)0))
   return (ENOMEM);
 }
 *mapp = malloc(sizeof(**mapp), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (*mapp == ((void*)0))
  return (ENOMEM);

 SLIST_INIT(&(*mapp)->dm_reslist);
 dmat->dt_map_count++;
 return (0);
}
