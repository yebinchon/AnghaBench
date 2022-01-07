
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hyperv_guid {int dummy; } ;
struct vmbus_channel {struct hyperv_guid const ch_guid_inst; } ;



const struct hyperv_guid *
vmbus_chan_guid_inst(const struct vmbus_channel *chan)
{
 return &chan->ch_guid_inst;
}
