
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahci_dc_cb_args {int error; int maddr; } ;
struct TYPE_2__ {int data_tag; int rfis_bus; int rfis_map; int rfis; int rfis_tag; int work_bus; int work_map; int work; int work_tag; } ;
struct ahci_channel {int chcaps; size_t numslots; TYPE_1__ dma; int mtx; } ;
typedef int device_t ;


 size_t AHCI_PRD_MAX ;
 int AHCI_P_CMD_FBSCP ;
 size_t AHCI_SG_ENTRIES ;
 size_t AHCI_WORK_SIZE ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 size_t PAGE_SIZE ;
 int ahci_dmafini (int ) ;
 int ahci_dmasetupc_cb ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,size_t,size_t,size_t,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,int ,size_t,int ,struct ahci_dc_cb_args*,int ) ;
 int bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bus_get_dma_tag (int ) ;
 int * busdma_lock_mutex ;
 struct ahci_channel* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
ahci_dmainit(device_t dev)
{
 struct ahci_channel *ch = device_get_softc(dev);
 struct ahci_dc_cb_args dcba;
 size_t rfsize;
 int error;


 error = bus_dma_tag_create(bus_get_dma_tag(dev), 1024, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0), AHCI_WORK_SIZE, 1, AHCI_WORK_SIZE,
     0, ((void*)0), ((void*)0), &ch->dma.work_tag);
 if (error != 0)
  goto error;
 error = bus_dmamem_alloc(ch->dma.work_tag, (void **)&ch->dma.work,
     BUS_DMA_ZERO, &ch->dma.work_map);
 if (error != 0)
  goto error;
 error = bus_dmamap_load(ch->dma.work_tag, ch->dma.work_map, ch->dma.work,
     AHCI_WORK_SIZE, ahci_dmasetupc_cb, &dcba, BUS_DMA_NOWAIT);
 if (error != 0 || (error = dcba.error) != 0) {
  bus_dmamem_free(ch->dma.work_tag, ch->dma.work, ch->dma.work_map);
  goto error;
 }
 ch->dma.work_bus = dcba.maddr;

 if (ch->chcaps & AHCI_P_CMD_FBSCP)
     rfsize = 4096;
 else
     rfsize = 256;
 error = bus_dma_tag_create(bus_get_dma_tag(dev), rfsize, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0), rfsize, 1, rfsize,
     0, ((void*)0), ((void*)0), &ch->dma.rfis_tag);
 if (error != 0)
  goto error;
 error = bus_dmamem_alloc(ch->dma.rfis_tag, (void **)&ch->dma.rfis, 0,
     &ch->dma.rfis_map);
 if (error != 0)
  goto error;
 error = bus_dmamap_load(ch->dma.rfis_tag, ch->dma.rfis_map, ch->dma.rfis,
     rfsize, ahci_dmasetupc_cb, &dcba, BUS_DMA_NOWAIT);
 if (error != 0 || (error = dcba.error) != 0) {
  bus_dmamem_free(ch->dma.rfis_tag, ch->dma.rfis, ch->dma.rfis_map);
  goto error;
 }
 ch->dma.rfis_bus = dcba.maddr;

 error = bus_dma_tag_create(bus_get_dma_tag(dev), 2, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     AHCI_SG_ENTRIES * PAGE_SIZE * ch->numslots,
     AHCI_SG_ENTRIES, AHCI_PRD_MAX,
     0, busdma_lock_mutex, &ch->mtx, &ch->dma.data_tag);
 if (error != 0)
  goto error;
 return;

error:
 device_printf(dev, "WARNING - DMA initialization failed, error %d\n",
     error);
 ahci_dmafini(dev);
}
