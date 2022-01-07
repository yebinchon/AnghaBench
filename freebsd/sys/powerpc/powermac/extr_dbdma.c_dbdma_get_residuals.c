
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {TYPE_1__* sc_slots; int sc_dmamap; int sc_dmatag; } ;
typedef TYPE_2__ dbdma_channel_t ;
struct TYPE_4__ {int xferStatus; } ;


 int BUS_DMASYNC_POSTREAD ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int le16toh (int ) ;

uint16_t
dbdma_get_residuals(dbdma_channel_t *chan, int slot)
{

 bus_dmamap_sync(chan->sc_dmatag, chan->sc_dmamap, BUS_DMASYNC_POSTREAD);

 return (le16toh(chan->sc_slots[slot].xferStatus));
}
