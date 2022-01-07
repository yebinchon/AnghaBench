
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int ch_rxbr; } ;


 int vmbus_rxbr_empty (int *) ;

bool
vmbus_chan_rx_empty(const struct vmbus_channel *chan)
{

 return (vmbus_rxbr_empty(&chan->ch_rxbr));
}
