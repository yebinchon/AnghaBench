
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iommu_state {int is_bushandle; int is_bustag; } ;
typedef int bus_dmasync_op_t ;
typedef TYPE_1__* bus_dmamap_t ;
typedef TYPE_2__* bus_dma_tag_t ;
struct TYPE_6__ {struct iommu_state* dt_cookie; } ;
struct TYPE_5__ {int dm_flags; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int DMF_LOADED ;
 int PSR_DMA_WRITE_SYNC ;
 int Sync ;
 int bus_space_read_8 (int ,int ,int ) ;
 int membar (int ) ;

__attribute__((used)) static void
sabre_dmamap_sync(bus_dma_tag_t dt, bus_dmamap_t map, bus_dmasync_op_t op)
{
 struct iommu_state *is = dt->dt_cookie;

 if ((map->dm_flags & DMF_LOADED) == 0)
  return;

 if ((op & BUS_DMASYNC_POSTREAD) != 0)
  (void)bus_space_read_8(is->is_bustag, is->is_bushandle,
      PSR_DMA_WRITE_SYNC);

 if ((op & BUS_DMASYNC_PREWRITE) != 0)
  membar(Sync);
}
