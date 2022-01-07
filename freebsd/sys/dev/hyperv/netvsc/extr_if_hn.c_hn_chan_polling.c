
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct vmbus_channel {int dummy; } ;


 int vmbus_chan_poll_disable (struct vmbus_channel*) ;
 int vmbus_chan_poll_enable (struct vmbus_channel*,int ) ;

__attribute__((used)) static void
hn_chan_polling(struct vmbus_channel *chan, u_int pollhz)
{
 if (pollhz == 0)
  vmbus_chan_poll_disable(chan);
 else
  vmbus_chan_poll_enable(chan, pollhz);
}
