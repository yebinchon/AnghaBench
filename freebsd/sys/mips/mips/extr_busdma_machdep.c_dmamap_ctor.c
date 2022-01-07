
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* bus_dmamap_t ;
typedef TYPE_2__* bus_dma_tag_t ;
struct TYPE_4__ {int map_count; } ;
struct TYPE_3__ {int bpages; scalar_t__ sync_count; int * allocbuffer; int * slist; scalar_t__ flags; TYPE_2__* dmat; } ;


 int STAILQ_INIT (int *) ;

__attribute__((used)) static int
dmamap_ctor(void *mem, int size, void *arg, int flags)
{
 bus_dmamap_t map;
 bus_dma_tag_t dmat;

 map = (bus_dmamap_t)mem;
 dmat = (bus_dma_tag_t)arg;

 dmat->map_count++;

 map->dmat = dmat;
 map->flags = 0;
 map->slist = ((void*)0);
 map->allocbuffer = ((void*)0);
 map->sync_count = 0;
 STAILQ_INIT(&map->bpages);

 return (0);
}
