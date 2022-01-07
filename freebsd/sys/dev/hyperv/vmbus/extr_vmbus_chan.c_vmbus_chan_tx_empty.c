
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int ch_txbr; } ;


 int vmbus_txbr_empty (int *) ;

bool
vmbus_chan_tx_empty(const struct vmbus_channel *chan)
{

 return (vmbus_txbr_empty(&chan->ch_txbr));
}
