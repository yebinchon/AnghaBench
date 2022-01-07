
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int map; int tag; } ;
typedef TYPE_1__ ocs_dma_t ;


 int bus_dmamap_sync (int ,int ,int ) ;

void
ocs_dma_sync(ocs_dma_t *dma, uint32_t flags)
{
 bus_dmamap_sync(dma->tag, dma->map, flags);
}
