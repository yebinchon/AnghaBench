
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {scalar_t__ ch_refs; int ch_detach_task; int ch_mgmt_tq; int ch_id; } ;


 int KASSERT (int,char*) ;
 scalar_t__ VMBUS_CHAN_ISPRIMARY (struct vmbus_channel*) ;
 int atomic_fetchadd_int (scalar_t__*,int) ;
 scalar_t__ bootverbose ;
 int taskqueue_enqueue (int ,int *) ;
 int vmbus_chan_printf (struct vmbus_channel*,char*,int ) ;

__attribute__((used)) static void
vmbus_chan_detach(struct vmbus_channel *chan)
{
 int refs;

 KASSERT(chan->ch_refs > 0, ("chan%u: invalid refcnt %d",
     chan->ch_id, chan->ch_refs));
 refs = atomic_fetchadd_int(&chan->ch_refs, -1);






 if (refs == 1) {



  if (bootverbose) {
   vmbus_chan_printf(chan, "chan%u detached\n",
       chan->ch_id);
  }
  taskqueue_enqueue(chan->ch_mgmt_tq, &chan->ch_detach_task);
 }
}
