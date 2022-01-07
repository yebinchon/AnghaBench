
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {scalar_t__ ch_poll_intvl; int ch_poll_task; int ch_tq; int ch_poll_timeo; } ;


 int callout_drain (int *) ;
 int taskqueue_cancel (int ,int *,int *) ;

__attribute__((used)) static bool
vmbus_chan_poll_cancel_intq(struct vmbus_channel *chan)
{

 if (chan->ch_poll_intvl == 0) {

  return (0);
 }





 callout_drain(&chan->ch_poll_timeo);
 chan->ch_poll_intvl = 0;







 taskqueue_cancel(chan->ch_tq, &chan->ch_poll_task, ((void*)0));


 return (1);
}
