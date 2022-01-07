
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* bus_dmamap_t ;
typedef int bus_dma_tag_t ;
struct TYPE_3__ {int dm_flags; } ;


 int DMF_LOADED ;

__attribute__((used)) static void
nexus_dmamap_unload(bus_dma_tag_t dmat, bus_dmamap_t map)
{

 map->dm_flags &= ~DMF_LOADED;
}
