
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct vmbus_channel {int ch_flags; int ch_id; } ;
struct vmbus_chan_pollarg {scalar_t__ poll_hz; struct vmbus_channel* poll_chan; } ;
struct task {int dummy; } ;


 int KASSERT (int,char*) ;
 int TASK_INIT (struct task*,int ,int ,struct vmbus_chan_pollarg*) ;
 int VMBUS_CHAN_FLAG_BATCHREAD ;
 scalar_t__ VMBUS_CHAN_POLLHZ_MAX ;
 scalar_t__ VMBUS_CHAN_POLLHZ_MIN ;
 int vmbus_chan_pollcfg_task ;
 int vmbus_chan_run_task (struct vmbus_channel*,struct task*) ;

void
vmbus_chan_poll_enable(struct vmbus_channel *chan, u_int pollhz)
{
 struct vmbus_chan_pollarg arg;
 struct task poll_cfg;

 KASSERT(chan->ch_flags & VMBUS_CHAN_FLAG_BATCHREAD,
     ("enable polling on non-batch chan%u", chan->ch_id));
 KASSERT(pollhz >= VMBUS_CHAN_POLLHZ_MIN &&
     pollhz <= VMBUS_CHAN_POLLHZ_MAX, ("invalid pollhz %u", pollhz));

 arg.poll_chan = chan;
 arg.poll_hz = pollhz;
 TASK_INIT(&poll_cfg, 0, vmbus_chan_pollcfg_task, &arg);
 vmbus_chan_run_task(chan, &poll_cfg);
}
