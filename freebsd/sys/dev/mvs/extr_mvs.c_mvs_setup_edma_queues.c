
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int workrq_bus; int workrp_bus; int workrp_map; int workrp_tag; int workrp; int workrq_map; int workrq_tag; } ;
struct mvs_channel {scalar_t__ in_idx; scalar_t__ out_idx; TYPE_1__ dma; int r_mem; } ;
typedef int device_t ;


 int ATA_OUTL (int ,int ,int) ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int EDMA_REQQBAH ;
 int EDMA_REQQIP ;
 int EDMA_REQQOP ;
 int EDMA_RESQBAH ;
 int EDMA_RESQIP ;
 int EDMA_RESQOP ;
 int MVS_WORKRP_SIZE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 struct mvs_channel* device_get_softc (int ) ;
 int memset (int ,int,int ) ;

__attribute__((used)) static void
mvs_setup_edma_queues(device_t dev)
{
 struct mvs_channel *ch = device_get_softc(dev);
 uint64_t work;


 work = ch->dma.workrq_bus;
 ATA_OUTL(ch->r_mem, EDMA_REQQBAH, work >> 32);
 ATA_OUTL(ch->r_mem, EDMA_REQQIP, work & 0xffffffff);
 ATA_OUTL(ch->r_mem, EDMA_REQQOP, work & 0xffffffff);
 bus_dmamap_sync(ch->dma.workrq_tag, ch->dma.workrq_map,
     BUS_DMASYNC_PREWRITE);

 memset(ch->dma.workrp, 0xff, MVS_WORKRP_SIZE);
 work = ch->dma.workrp_bus;
 ATA_OUTL(ch->r_mem, EDMA_RESQBAH, work >> 32);
 ATA_OUTL(ch->r_mem, EDMA_RESQIP, work & 0xffffffff);
 ATA_OUTL(ch->r_mem, EDMA_RESQOP, work & 0xffffffff);
 bus_dmamap_sync(ch->dma.workrp_tag, ch->dma.workrp_map,
     BUS_DMASYNC_PREREAD);
 ch->out_idx = 0;
 ch->in_idx = 0;
}
