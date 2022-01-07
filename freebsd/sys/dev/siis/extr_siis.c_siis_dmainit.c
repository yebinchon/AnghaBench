
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siis_dc_cb_args {int maddr; scalar_t__ error; } ;
struct TYPE_2__ {int data_tag; int work_bus; int work_map; int work; int work_tag; } ;
struct siis_channel {TYPE_1__ dma; int mtx; } ;
typedef int device_t ;


 int BUS_SPACE_MAXADDR ;
 int PAGE_SIZE ;
 int SIIS_MAX_SLOTS ;
 int SIIS_SG_ENTRIES ;
 int SIIS_WORK_SIZE ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 scalar_t__ bus_dmamap_load (int ,int ,int ,int,int ,struct siis_dc_cb_args*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bus_get_dma_tag (int ) ;
 int * busdma_lock_mutex ;
 struct siis_channel* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int siis_dmafini (int ) ;
 int siis_dmasetupc_cb ;

__attribute__((used)) static void
siis_dmainit(device_t dev)
{
 struct siis_channel *ch = device_get_softc(dev);
 struct siis_dc_cb_args dcba;


 if (bus_dma_tag_create(bus_get_dma_tag(dev), 1024, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0), SIIS_WORK_SIZE, 1, SIIS_WORK_SIZE,
     0, ((void*)0), ((void*)0), &ch->dma.work_tag))
  goto error;
 if (bus_dmamem_alloc(ch->dma.work_tag, (void **)&ch->dma.work, 0,
     &ch->dma.work_map))
  goto error;
 if (bus_dmamap_load(ch->dma.work_tag, ch->dma.work_map, ch->dma.work,
     SIIS_WORK_SIZE, siis_dmasetupc_cb, &dcba, 0) || dcba.error) {
  bus_dmamem_free(ch->dma.work_tag, ch->dma.work, ch->dma.work_map);
  goto error;
 }
 ch->dma.work_bus = dcba.maddr;

 if (bus_dma_tag_create(bus_get_dma_tag(dev), 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     SIIS_SG_ENTRIES * PAGE_SIZE * SIIS_MAX_SLOTS,
     SIIS_SG_ENTRIES, 0xFFFFFFFF,
     0, busdma_lock_mutex, &ch->mtx, &ch->dma.data_tag)) {
  goto error;
 }
 return;

error:
 device_printf(dev, "WARNING - DMA initialization failed\n");
 siis_dmafini(dev);
}
