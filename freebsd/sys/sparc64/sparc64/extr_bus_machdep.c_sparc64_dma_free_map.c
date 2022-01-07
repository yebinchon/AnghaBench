
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bus_dmamap_t ;
typedef TYPE_1__* bus_dma_tag_t ;
struct TYPE_3__ {int dt_map_count; } ;


 int M_DEVBUF ;
 int free (int ,int ) ;

void
sparc64_dma_free_map(bus_dma_tag_t dmat, bus_dmamap_t map)
{

 free(map, M_DEVBUF);
 dmat->dt_map_count--;
}
