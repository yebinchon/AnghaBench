
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int ch_stflags; } ;


 int VMBUS_CHAN_ST_REVOKED ;

bool
vmbus_chan_is_revoked(const struct vmbus_channel *chan)
{

 if (chan->ch_stflags & VMBUS_CHAN_ST_REVOKED)
  return (1);
 return (0);
}
