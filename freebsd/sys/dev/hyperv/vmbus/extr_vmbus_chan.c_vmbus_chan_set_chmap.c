
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmbus_channel {size_t ch_id; TYPE_1__* ch_vmbus; } ;
struct TYPE_2__ {struct vmbus_channel** vmbus_chmap; } ;


 int __compiler_membar () ;

__attribute__((used)) static void
vmbus_chan_set_chmap(struct vmbus_channel *chan)
{
 __compiler_membar();
 chan->ch_vmbus->vmbus_chmap[chan->ch_id] = chan;
}
