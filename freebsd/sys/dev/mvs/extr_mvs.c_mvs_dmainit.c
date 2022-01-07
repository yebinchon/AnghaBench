
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvs_dc_cb_args {int maddr; scalar_t__ error; } ;
struct TYPE_2__ {int data_tag; int workrp_bus; int workrp_map; int workrp; int workrp_tag; int workrq_bus; int workrq_map; int workrq; int workrq_tag; } ;
struct mvs_channel {TYPE_1__ dma; int mtx; } ;
typedef int device_t ;


 int BUS_SPACE_MAXADDR ;
 int MVS_EPRD_MAX ;
 int MVS_MAX_SLOTS ;
 int MVS_SG_ENTRIES ;
 int MVS_WORKRP_SIZE ;
 int MVS_WORKRQ_SIZE ;
 int PAGE_SIZE ;
 scalar_t__ bus_dma_tag_create (int ,int,int,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 scalar_t__ bus_dmamap_load (int ,int ,int ,int,int ,struct mvs_dc_cb_args*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bus_get_dma_tag (int ) ;
 int * busdma_lock_mutex ;
 struct mvs_channel* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mvs_dmafini (int ) ;
 int mvs_dmasetupc_cb ;

__attribute__((used)) static void
mvs_dmainit(device_t dev)
{
 struct mvs_channel *ch = device_get_softc(dev);
 struct mvs_dc_cb_args dcba;


 if (bus_dma_tag_create(bus_get_dma_tag(dev), 1024, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0), MVS_WORKRQ_SIZE, 1, MVS_WORKRQ_SIZE,
     0, ((void*)0), ((void*)0), &ch->dma.workrq_tag))
  goto error;
 if (bus_dmamem_alloc(ch->dma.workrq_tag, (void **)&ch->dma.workrq, 0,
     &ch->dma.workrq_map))
  goto error;
 if (bus_dmamap_load(ch->dma.workrq_tag, ch->dma.workrq_map,
     ch->dma.workrq, MVS_WORKRQ_SIZE, mvs_dmasetupc_cb, &dcba, 0) ||
     dcba.error) {
  bus_dmamem_free(ch->dma.workrq_tag,
      ch->dma.workrq, ch->dma.workrq_map);
  goto error;
 }
 ch->dma.workrq_bus = dcba.maddr;

 if (bus_dma_tag_create(bus_get_dma_tag(dev), 256, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0), MVS_WORKRP_SIZE, 1, MVS_WORKRP_SIZE,
     0, ((void*)0), ((void*)0), &ch->dma.workrp_tag))
  goto error;
 if (bus_dmamem_alloc(ch->dma.workrp_tag, (void **)&ch->dma.workrp, 0,
     &ch->dma.workrp_map))
  goto error;
 if (bus_dmamap_load(ch->dma.workrp_tag, ch->dma.workrp_map,
     ch->dma.workrp, MVS_WORKRP_SIZE, mvs_dmasetupc_cb, &dcba, 0) ||
     dcba.error) {
  bus_dmamem_free(ch->dma.workrp_tag,
      ch->dma.workrp, ch->dma.workrp_map);
  goto error;
 }
 ch->dma.workrp_bus = dcba.maddr;

 if (bus_dma_tag_create(bus_get_dma_tag(dev), 2, MVS_EPRD_MAX,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MVS_SG_ENTRIES * PAGE_SIZE * MVS_MAX_SLOTS,
     MVS_SG_ENTRIES, MVS_EPRD_MAX,
     0, busdma_lock_mutex, &ch->mtx, &ch->dma.data_tag)) {
  goto error;
 }
 return;

error:
 device_printf(dev, "WARNING - DMA initialization failed\n");
 mvs_dmafini(dev);
}
