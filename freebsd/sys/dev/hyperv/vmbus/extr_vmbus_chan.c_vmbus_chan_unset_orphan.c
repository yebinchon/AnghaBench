
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int ch_orphan_lock; int * ch_orphan_xact; } ;


 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

void
vmbus_chan_unset_orphan(struct vmbus_channel *chan)
{

 sx_xlock(&chan->ch_orphan_lock);
 chan->ch_orphan_xact = ((void*)0);
 sx_xunlock(&chan->ch_orphan_lock);
}
