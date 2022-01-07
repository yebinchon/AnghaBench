
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_softc {int dummy; } ;
struct vmbus_channel {int ch_id; int ch_cpuid; } ;


 int VMBUS_EVTFLAG_LEN ;
 int* VMBUS_PCPU_PTR (struct vmbus_softc*,int ,int ) ;
 scalar_t__ atomic_cmpset_int (int volatile*,int,int) ;
 scalar_t__ bootverbose ;
 int event_flags_cnt ;
 int vmbus_chan_printf (struct vmbus_channel const*,char*,int,int ,int) ;

__attribute__((used)) static void
vmbus_chan_update_evtflagcnt(struct vmbus_softc *sc,
    const struct vmbus_channel *chan)
{
 volatile int *flag_cnt_ptr;
 int flag_cnt;

 flag_cnt = (chan->ch_id / VMBUS_EVTFLAG_LEN) + 1;
 flag_cnt_ptr = VMBUS_PCPU_PTR(sc, event_flags_cnt, chan->ch_cpuid);

 for (;;) {
  int old_flag_cnt;

  old_flag_cnt = *flag_cnt_ptr;
  if (old_flag_cnt >= flag_cnt)
   break;
  if (atomic_cmpset_int(flag_cnt_ptr, old_flag_cnt, flag_cnt)) {
   if (bootverbose) {
    vmbus_chan_printf(chan,
        "chan%u update cpu%d flag_cnt to %d\n",
        chan->ch_id, chan->ch_cpuid, flag_cnt);
   }
   break;
  }
 }
}
