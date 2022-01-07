
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {struct taskqueue* ch_mgmt_tq; } ;
struct taskqueue {int dummy; } ;



struct taskqueue *
vmbus_chan_mgmt_tq(const struct vmbus_channel *chan)
{

 return (chan->ch_mgmt_tq);
}
