
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_dmasync_op_t ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;


 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int Sync ;
 int membar (int ) ;

__attribute__((used)) static void
nexus_dmamap_sync(bus_dma_tag_t dmat, bus_dmamap_t map, bus_dmasync_op_t op)
{






 if ((op & BUS_DMASYNC_PREREAD) || (op & BUS_DMASYNC_PREWRITE)) {




  membar(Sync);
 }
 if (op & BUS_DMASYNC_POSTWRITE) {

 }
}
