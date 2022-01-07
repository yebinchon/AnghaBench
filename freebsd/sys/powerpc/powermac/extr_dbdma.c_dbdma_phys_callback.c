
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sc_slots_pa; } ;
typedef TYPE_1__ dbdma_channel_t ;
struct TYPE_6__ {int ds_addr; } ;
typedef TYPE_2__ bus_dma_segment_t ;


 int CHAN_CMDPTR ;
 int dbdma_write_reg (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
dbdma_phys_callback(void *chan, bus_dma_segment_t *segs, int nsegs, int error)
{
 dbdma_channel_t *channel = (dbdma_channel_t *)(chan);

 channel->sc_slots_pa = segs[0].ds_addr;
 dbdma_write_reg(channel, CHAN_CMDPTR, channel->sc_slots_pa);
}
