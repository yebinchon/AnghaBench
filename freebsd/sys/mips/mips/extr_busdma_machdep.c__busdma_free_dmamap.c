
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* bus_dmamap_t ;
struct TYPE_4__ {int slist; } ;


 int M_BUSDMA ;
 int dmamap_zone ;
 int free (int ,int ) ;
 int uma_zfree (int ,TYPE_1__*) ;

__attribute__((used)) static __inline void
_busdma_free_dmamap(bus_dmamap_t map)
{

 free(map->slist, M_BUSDMA);
 uma_zfree(dmamap_zone, map);
}
