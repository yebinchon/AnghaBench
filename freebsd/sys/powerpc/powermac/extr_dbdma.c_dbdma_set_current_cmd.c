
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct dbdma_command {int dummy; } ;
struct TYPE_4__ {scalar_t__ sc_slots_pa; } ;
typedef TYPE_1__ dbdma_channel_t ;


 int CHAN_CMDPTR ;
 int dbdma_write_reg (TYPE_1__*,int ,scalar_t__) ;

void
dbdma_set_current_cmd(dbdma_channel_t *chan, int slot)
{
 uint32_t cmd;

 cmd = chan->sc_slots_pa + slot * sizeof(struct dbdma_command);
 dbdma_write_reg(chan, CHAN_CMDPTR, cmd);
}
