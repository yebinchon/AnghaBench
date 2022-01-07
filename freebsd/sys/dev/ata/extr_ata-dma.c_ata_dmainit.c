
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_dc_cb_args {int maddr; scalar_t__ error; } ;
struct TYPE_2__ {int alignment; int boundary; int segsize; scalar_t__ max_iosize; scalar_t__ max_address; int dma_slots; int work_bus; int work_map; int work; int work_tag; int dmatag; int * unload; int * load; int * setprd; int * free; int * alloc; } ;
struct ata_channel {TYPE_1__ dma; } ;
typedef int device_t ;


 int ATA_DMA_ENTRIES ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_SPACE_MAXADDR ;
 scalar_t__ BUS_SPACE_MAXADDR_32BIT ;
 int MAXPHYS ;
 scalar_t__ MAXWSPCSZ ;
 scalar_t__ MIN (int,int ) ;
 int PAGE_SIZE ;
 int * ata_dmaalloc ;
 int ata_dmafini (int ) ;
 int * ata_dmafree ;
 int * ata_dmaload ;
 int * ata_dmasetprd ;
 int ata_dmasetupc_cb ;
 int * ata_dmaunload ;
 scalar_t__ bus_dma_tag_create (int ,int,int,scalar_t__,int ,int *,int *,scalar_t__,int,scalar_t__,int ,int *,int *,int *) ;
 scalar_t__ bus_dmamap_load (int ,int ,int ,scalar_t__,int ,struct ata_dc_cb_args*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bus_get_dma_tag (int ) ;
 struct ata_channel* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

void
ata_dmainit(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);
    struct ata_dc_cb_args dcba;

    if (ch->dma.alloc == ((void*)0))
 ch->dma.alloc = ata_dmaalloc;
    if (ch->dma.free == ((void*)0))
 ch->dma.free = ata_dmafree;
    if (ch->dma.setprd == ((void*)0))
 ch->dma.setprd = ata_dmasetprd;
    if (ch->dma.load == ((void*)0))
 ch->dma.load = ata_dmaload;
    if (ch->dma.unload == ((void*)0))
 ch->dma.unload = ata_dmaunload;
    if (ch->dma.alignment == 0)
 ch->dma.alignment = 2;
    if (ch->dma.boundary == 0)
 ch->dma.boundary = 65536;
    if (ch->dma.segsize == 0)
 ch->dma.segsize = 65536;
    if (ch->dma.max_iosize == 0)
 ch->dma.max_iosize = MIN((ATA_DMA_ENTRIES - 1) * PAGE_SIZE, MAXPHYS);
    if (ch->dma.max_address == 0)
 ch->dma.max_address = BUS_SPACE_MAXADDR_32BIT;
    if (ch->dma.dma_slots == 0)
 ch->dma.dma_slots = 1;

    if (bus_dma_tag_create(bus_get_dma_tag(dev), ch->dma.alignment, 0,
      ch->dma.max_address, BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0), ch->dma.max_iosize,
      ATA_DMA_ENTRIES, ch->dma.segsize,
      0, ((void*)0), ((void*)0), &ch->dma.dmatag))
 goto error;

    if (bus_dma_tag_create(ch->dma.dmatag, PAGE_SIZE, 64 * 1024,
      ch->dma.max_address, BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0), MAXWSPCSZ, 1, MAXWSPCSZ,
      0, ((void*)0), ((void*)0), &ch->dma.work_tag))
 goto error;

    if (bus_dmamem_alloc(ch->dma.work_tag, (void **)&ch->dma.work,
    BUS_DMA_WAITOK | BUS_DMA_COHERENT,
    &ch->dma.work_map))
 goto error;

    if (bus_dmamap_load(ch->dma.work_tag, ch->dma.work_map, ch->dma.work,
   MAXWSPCSZ, ata_dmasetupc_cb, &dcba, 0) ||
   dcba.error) {
 bus_dmamem_free(ch->dma.work_tag, ch->dma.work, ch->dma.work_map);
 goto error;
    }
    ch->dma.work_bus = dcba.maddr;
    return;

error:
    device_printf(dev, "WARNING - DMA initialization failed, disabling DMA\n");
    ata_dmafini(dev);
}
