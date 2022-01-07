
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int ch_subchan_cnt; } ;


 int VMBUS_CHAN_ISPRIMARY (struct vmbus_channel*) ;
 int vmbus_chan_close_internal (struct vmbus_channel*) ;
 int vmbus_chan_detach (struct vmbus_channel*) ;
 struct vmbus_channel** vmbus_subchan_get (struct vmbus_channel*,int) ;
 int vmbus_subchan_rel (struct vmbus_channel**,int) ;

void
vmbus_chan_close(struct vmbus_channel *chan)
{
 int subchan_cnt;

 if (!VMBUS_CHAN_ISPRIMARY(chan)) {




  return;
 }




 subchan_cnt = chan->ch_subchan_cnt;
 if (subchan_cnt > 0) {
  struct vmbus_channel **subchan;
  int i;

  subchan = vmbus_subchan_get(chan, subchan_cnt);
  for (i = 0; i < subchan_cnt; ++i) {
   vmbus_chan_close_internal(subchan[i]);





   vmbus_chan_detach(subchan[i]);
  }
  vmbus_subchan_rel(subchan, subchan_cnt);
 }


 vmbus_chan_close_internal(chan);
}
