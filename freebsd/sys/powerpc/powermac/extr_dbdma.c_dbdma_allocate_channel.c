
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
struct resource {int dummy; } ;
struct dbdma_channel {int dummy; } ;
struct TYPE_7__ {int sc_nslots; int sc_slots; int sc_dmamap; int sc_dmatag; scalar_t__ sc_slots_pa; int sc_off; struct resource* sc_regs; } ;
typedef TYPE_1__ dbdma_channel_t ;
typedef int bus_dma_tag_t ;


 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CHAN_CMDPTR_HI ;
 int M_DBDMA ;
 int M_WAITOK ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,TYPE_1__*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int dbdma_phys_callback ;
 int dbdma_stop (TYPE_1__*) ;
 int dbdma_write_reg (TYPE_1__*,int ,int ) ;
 TYPE_1__* malloc (int,int ,int) ;

int
dbdma_allocate_channel(struct resource *dbdma_regs, u_int offset,
    bus_dma_tag_t parent_dma, int slots, dbdma_channel_t **chan)
{
 int error = 0;
 dbdma_channel_t *channel;

 channel = *chan = malloc(sizeof(struct dbdma_channel), M_DBDMA,
     M_WAITOK | M_ZERO);

 channel->sc_regs = dbdma_regs;
 channel->sc_off = offset;
 dbdma_stop(channel);

 channel->sc_slots_pa = 0;

 error = bus_dma_tag_create(parent_dma, 16, 0, BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), PAGE_SIZE, 1, PAGE_SIZE, 0, ((void*)0),
     ((void*)0), &(channel->sc_dmatag));

 error = bus_dmamem_alloc(channel->sc_dmatag,
     (void **)&channel->sc_slots, BUS_DMA_WAITOK | BUS_DMA_ZERO,
     &channel->sc_dmamap);

 error = bus_dmamap_load(channel->sc_dmatag, channel->sc_dmamap,
     channel->sc_slots, PAGE_SIZE, dbdma_phys_callback, channel, 0);

 dbdma_write_reg(channel, CHAN_CMDPTR_HI, 0);

 channel->sc_nslots = slots;

 return (error);
}
