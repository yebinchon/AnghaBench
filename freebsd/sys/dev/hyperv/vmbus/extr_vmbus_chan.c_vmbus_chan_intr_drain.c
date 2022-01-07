
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int ch_task; int ch_tq; } ;


 int taskqueue_drain (int ,int *) ;

void
vmbus_chan_intr_drain(struct vmbus_channel *chan)
{

 taskqueue_drain(chan->ch_tq, &chan->ch_task);
}
