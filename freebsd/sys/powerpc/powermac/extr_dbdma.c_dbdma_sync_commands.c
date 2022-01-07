
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sc_dmamap; int sc_dmatag; } ;
typedef TYPE_1__ dbdma_channel_t ;
typedef int bus_dmasync_op_t ;


 int bus_dmamap_sync (int ,int ,int ) ;

void
dbdma_sync_commands(dbdma_channel_t *chan, bus_dmasync_op_t op)
{

 bus_dmamap_sync(chan->sc_dmatag, chan->sc_dmamap, op);
}
