
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int ch_flags; int ch_id; } ;
struct task {int dummy; } ;


 int KASSERT (int,char*) ;
 int TASK_INIT (struct task*,int ,int ,struct vmbus_channel*) ;
 int VMBUS_CHAN_FLAG_BATCHREAD ;
 int vmbus_chan_polldis_task ;
 int vmbus_chan_run_task (struct vmbus_channel*,struct task*) ;

void
vmbus_chan_poll_disable(struct vmbus_channel *chan)
{
 struct task poll_dis;

 KASSERT(chan->ch_flags & VMBUS_CHAN_FLAG_BATCHREAD,
     ("disable polling on non-batch chan%u", chan->ch_id));

 TASK_INIT(&poll_dis, 0, vmbus_chan_polldis_task, chan);
 vmbus_chan_run_task(chan, &poll_dis);
}
