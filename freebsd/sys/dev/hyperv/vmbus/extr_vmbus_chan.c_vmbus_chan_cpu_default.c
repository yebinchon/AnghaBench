
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int dummy; } ;


 int vmbus_chan_cpu_set (struct vmbus_channel*,int ) ;

__attribute__((used)) static void
vmbus_chan_cpu_default(struct vmbus_channel *chan)
{





 vmbus_chan_cpu_set(chan, 0);
}
