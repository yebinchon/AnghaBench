
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmbus_channel {int ch_id; } ;



uint32_t
vmbus_chan_id(const struct vmbus_channel *chan)
{
 return chan->ch_id;
}
