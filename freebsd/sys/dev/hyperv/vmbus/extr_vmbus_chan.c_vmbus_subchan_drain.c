
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {scalar_t__ ch_subchan_cnt; int ch_subchan_lock; } ;


 int mtx_lock (int *) ;
 int mtx_sleep (struct vmbus_channel*,int *,int ,char*,int ) ;
 int mtx_unlock (int *) ;

void
vmbus_subchan_drain(struct vmbus_channel *pri_chan)
{
 mtx_lock(&pri_chan->ch_subchan_lock);
 while (pri_chan->ch_subchan_cnt > 0)
  mtx_sleep(pri_chan, &pri_chan->ch_subchan_lock, 0, "dsubch", 0);
 mtx_unlock(&pri_chan->ch_subchan_lock);
}
