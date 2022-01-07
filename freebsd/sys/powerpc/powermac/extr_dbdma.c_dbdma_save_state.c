
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void** sc_saved_regs; } ;
typedef TYPE_1__ dbdma_channel_t ;


 int CHAN_BRANCH_SELECT ;
 int CHAN_CMDPTR ;
 int CHAN_CMDPTR_HI ;
 int CHAN_INTR_SELECT ;
 int CHAN_WAIT_SELECT ;
 void* dbdma_read_reg (TYPE_1__*,int ) ;
 int dbdma_stop (TYPE_1__*) ;

void
dbdma_save_state(dbdma_channel_t *chan)
{

 chan->sc_saved_regs[0] = dbdma_read_reg(chan, CHAN_CMDPTR);
 chan->sc_saved_regs[1] = dbdma_read_reg(chan, CHAN_CMDPTR_HI);
 chan->sc_saved_regs[2] = dbdma_read_reg(chan, CHAN_INTR_SELECT);
 chan->sc_saved_regs[3] = dbdma_read_reg(chan, CHAN_BRANCH_SELECT);
 chan->sc_saved_regs[4] = dbdma_read_reg(chan, CHAN_WAIT_SELECT);

 dbdma_stop(chan);
}
