
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int dummy; } ;


 scalar_t__ VMBUS_CHAN_ISPRIMARY (struct vmbus_channel const*) ;

bool
vmbus_chan_is_primary(const struct vmbus_channel *chan)
{
 if (VMBUS_CHAN_ISPRIMARY(chan))
  return 1;
 else
  return 0;
}
