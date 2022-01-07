
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * sc_saved_regs; } ;
typedef TYPE_1__ dbdma_channel_t ;


 int CHAN_BRANCH_SELECT ;
 int CHAN_CMDPTR ;
 int CHAN_CMDPTR_HI ;
 int CHAN_INTR_SELECT ;
 int CHAN_WAIT_SELECT ;
 int dbdma_wake (TYPE_1__*) ;
 int dbdma_write_reg (TYPE_1__*,int ,int ) ;

void
dbdma_restore_state(dbdma_channel_t *chan)
{

 dbdma_wake(chan);
 dbdma_write_reg(chan, CHAN_CMDPTR, chan->sc_saved_regs[0]);
 dbdma_write_reg(chan, CHAN_CMDPTR_HI, chan->sc_saved_regs[1]);
 dbdma_write_reg(chan, CHAN_INTR_SELECT, chan->sc_saved_regs[2]);
 dbdma_write_reg(chan, CHAN_BRANCH_SELECT, chan->sc_saved_regs[3]);
 dbdma_write_reg(chan, CHAN_WAIT_SELECT, chan->sc_saved_regs[4]);
}
