
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hv_paddr; } ;
struct vmbus_channel {int ch_txflags; TYPE_1__ ch_monprm_dma; int ch_montrig_mask; int ch_montrig; int ch_evtflag_mask; int ch_evtflag; } ;


 int VMBUS_CHAN_TXF_HASMNF ;
 int atomic_set_int (int ,int ) ;
 int atomic_set_long (int ,int ) ;
 int hypercall_signal_event (int ) ;

__attribute__((used)) static __inline void
vmbus_chan_signal_tx(const struct vmbus_channel *chan)
{
 atomic_set_long(chan->ch_evtflag, chan->ch_evtflag_mask);
 if (chan->ch_txflags & VMBUS_CHAN_TXF_HASMNF)
  atomic_set_int(chan->ch_montrig, chan->ch_montrig_mask);
 else
  hypercall_signal_event(chan->ch_monprm_dma.hv_paddr);
}
