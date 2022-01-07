
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_xact {int dummy; } ;
struct vmbus_channel {int dummy; } ;


 int DELAY (int) ;
 int pause (char*,int) ;
 scalar_t__ vmbus_chan_is_revoked (struct vmbus_channel const*) ;
 int vmbus_chan_rx_empty (struct vmbus_channel const*) ;
 void* vmbus_xact_busywait (struct vmbus_xact*,size_t*) ;
 void* vmbus_xact_wait (struct vmbus_xact*,size_t*) ;

const void *
vmbus_chan_xact_wait(const struct vmbus_channel *chan,
    struct vmbus_xact *xact, size_t *resp_len, bool can_sleep)
{
 const void *ret;

 if (can_sleep)
  ret = vmbus_xact_wait(xact, resp_len);
 else
  ret = vmbus_xact_busywait(xact, resp_len);
 if (vmbus_chan_is_revoked(chan)) {
  while (!vmbus_chan_rx_empty(chan)) {
   if (can_sleep)
    pause("chxact", 1);
   else
    DELAY(1000);
  }
 }
 return (ret);
}
