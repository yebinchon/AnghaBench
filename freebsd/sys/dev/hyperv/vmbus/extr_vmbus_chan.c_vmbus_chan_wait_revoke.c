
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int dummy; } ;


 int DELAY (int) ;
 int WAIT_COUNT ;
 int pause (char*,int) ;
 scalar_t__ vmbus_chan_is_revoked (struct vmbus_channel const*) ;

__attribute__((used)) static bool
vmbus_chan_wait_revoke(const struct vmbus_channel *chan, bool can_sleep)
{


 int i;

 for (i = 0; i < 200; ++i) {
  if (vmbus_chan_is_revoked(chan))
   return (1);
  if (can_sleep)
   pause("wchrev", 1);
  else
   DELAY(1000);
 }
 return (0);


}
