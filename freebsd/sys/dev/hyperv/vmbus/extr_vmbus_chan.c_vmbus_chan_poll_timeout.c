
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {scalar_t__ ch_poll_intvl; int ch_poll_task; int ch_tq; int ch_id; } ;


 int KASSERT (int,char*) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
vmbus_chan_poll_timeout(void *xchan)
{
 struct vmbus_channel *chan = xchan;

 KASSERT(chan->ch_poll_intvl != 0,
     ("chan%u: polling timeout in interrupt mode", chan->ch_id));
 taskqueue_enqueue(chan->ch_tq, &chan->ch_poll_task);
}
