
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_long ;
struct vmbus_softc {struct vmbus_channel** vmbus_chmap; } ;
struct vmbus_channel {int ch_flags; int ch_task; int ch_tq; int ch_rxbr; } ;


 int VMBUS_CHAN_FLAG_BATCHREAD ;
 int VMBUS_EVTFLAG_SHIFT ;
 int __compiler_membar () ;
 scalar_t__ __predict_false (int ) ;
 scalar_t__ atomic_swap_long (scalar_t__ volatile*,int ) ;
 int ffsl (scalar_t__) ;
 int taskqueue_enqueue (int ,int *) ;
 int vmbus_rxbr_intr_mask (int *) ;

__attribute__((used)) static __inline void
vmbus_event_flags_proc(struct vmbus_softc *sc, volatile u_long *event_flags,
    int flag_cnt)
{
 int f;

 for (f = 0; f < flag_cnt; ++f) {
  uint32_t chid_base;
  u_long flags;
  int chid_ofs;

  if (event_flags[f] == 0)
   continue;

  flags = atomic_swap_long(&event_flags[f], 0);
  chid_base = f << VMBUS_EVTFLAG_SHIFT;

  while ((chid_ofs = ffsl(flags)) != 0) {
   struct vmbus_channel *chan;

   --chid_ofs;
   flags &= ~(1UL << chid_ofs);

   chan = sc->vmbus_chmap[chid_base + chid_ofs];
   if (__predict_false(chan == ((void*)0))) {

    continue;
   }
   __compiler_membar();

   if (chan->ch_flags & VMBUS_CHAN_FLAG_BATCHREAD)
    vmbus_rxbr_intr_mask(&chan->ch_rxbr);
   taskqueue_enqueue(chan->ch_tq, &chan->ch_task);
  }
 }
}
