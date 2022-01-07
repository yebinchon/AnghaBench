
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int dummy; } ;
struct task {int dummy; } ;


 int TASK_INIT (struct task*,int ,int ,struct vmbus_channel*) ;
 int vmbus_chan_poll_cancel_task ;
 int vmbus_chan_run_task (struct vmbus_channel*,struct task*) ;

__attribute__((used)) static void
vmbus_chan_poll_cancel(struct vmbus_channel *chan)
{
 struct task poll_cancel;

 TASK_INIT(&poll_cancel, 0, vmbus_chan_poll_cancel_task, chan);
 vmbus_chan_run_task(chan, &poll_cancel);
}
