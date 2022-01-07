
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sync_list {int dummy; } ;
typedef TYPE_1__* bus_dmamap_t ;
typedef TYPE_2__* bus_dma_tag_t ;
struct TYPE_8__ {int nsegments; } ;
struct TYPE_7__ {struct sync_list* slist; } ;


 int M_BUSDMA ;
 int M_NOWAIT ;
 int dmamap_zone ;
 int free (struct sync_list*,int ) ;
 struct sync_list* malloc (int,int ,int ) ;
 TYPE_1__* uma_zalloc_arg (int ,TYPE_2__*,int ) ;

__attribute__((used)) static __inline bus_dmamap_t
_busdma_alloc_dmamap(bus_dma_tag_t dmat)
{
 struct sync_list *slist;
 bus_dmamap_t map;

 slist = malloc(sizeof(*slist) * dmat->nsegments, M_BUSDMA, M_NOWAIT);
 if (slist == ((void*)0))
  return (((void*)0));
 map = uma_zalloc_arg(dmamap_zone, dmat, M_NOWAIT);
 if (map != ((void*)0))
  map->slist = slist;
 else
  free(slist, M_BUSDMA);
 return (map);
}
