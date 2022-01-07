
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bus_dmamap_dmar {int locked; int cansleep; struct bus_dma_tag_dmar* tag; int map_entries; } ;
struct TYPE_2__ {int nsegments; int domain; } ;
struct bus_dma_tag_dmar {int map_count; int * segments; TYPE_1__ common; } ;
typedef int * bus_dmamap_t ;
typedef scalar_t__ bus_dma_tag_t ;
typedef int bus_dma_segment_t ;


 int DOMAINSET_PREF (int ) ;
 int ENOMEM ;
 int M_DMAR_DMAMAP ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int free_domain (struct bus_dmamap_dmar*,int ) ;
 void* malloc_domainset (int,int ,int ,int) ;

__attribute__((used)) static int
dmar_bus_dmamap_create(bus_dma_tag_t dmat, int flags, bus_dmamap_t *mapp)
{
 struct bus_dma_tag_dmar *tag;
 struct bus_dmamap_dmar *map;

 tag = (struct bus_dma_tag_dmar *)dmat;
 map = malloc_domainset(sizeof(*map), M_DMAR_DMAMAP,
     DOMAINSET_PREF(tag->common.domain), M_NOWAIT | M_ZERO);
 if (map == ((void*)0)) {
  *mapp = ((void*)0);
  return (ENOMEM);
 }
 if (tag->segments == ((void*)0)) {
  tag->segments = malloc_domainset(sizeof(bus_dma_segment_t) *
      tag->common.nsegments, M_DMAR_DMAMAP,
      DOMAINSET_PREF(tag->common.domain), M_NOWAIT);
  if (tag->segments == ((void*)0)) {
   free_domain(map, M_DMAR_DMAMAP);
   *mapp = ((void*)0);
   return (ENOMEM);
  }
 }
 TAILQ_INIT(&map->map_entries);
 map->tag = tag;
 map->locked = 1;
 map->cansleep = 0;
 tag->map_count++;
 *mapp = (bus_dmamap_t)map;

 return (0);
}
