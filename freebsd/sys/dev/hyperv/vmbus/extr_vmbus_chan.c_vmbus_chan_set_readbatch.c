
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int ch_flags; } ;


 int VMBUS_CHAN_FLAG_BATCHREAD ;

void
vmbus_chan_set_readbatch(struct vmbus_channel *chan, bool on)
{
 if (!on)
  chan->ch_flags &= ~VMBUS_CHAN_FLAG_BATCHREAD;
 else
  chan->ch_flags |= VMBUS_CHAN_FLAG_BATCHREAD;
}
