
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int ch_tq; } ;
struct task {int dummy; } ;


 int taskqueue_drain (int ,struct task*) ;
 int taskqueue_enqueue (int ,struct task*) ;

void
vmbus_chan_run_task(struct vmbus_channel *chan, struct task *task)
{

 taskqueue_enqueue(chan->ch_tq, task);
 taskqueue_drain(chan->ch_tq, task);
}
