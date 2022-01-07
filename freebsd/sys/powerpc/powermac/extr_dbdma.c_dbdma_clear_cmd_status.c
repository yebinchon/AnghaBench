
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sc_slots; } ;
typedef TYPE_2__ dbdma_channel_t ;
struct TYPE_4__ {scalar_t__ resCount; } ;



void
dbdma_clear_cmd_status(dbdma_channel_t *chan, int slot)
{

 chan->sc_slots[slot].resCount = 0;
}
