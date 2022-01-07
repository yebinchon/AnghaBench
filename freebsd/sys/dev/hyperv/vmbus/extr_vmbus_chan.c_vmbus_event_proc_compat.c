
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_softc {int vmbus_rx_evtflags; } ;
struct vmbus_evtflags {int * evt_flags; } ;


 int VMBUS_CHAN_MAX_COMPAT ;
 int VMBUS_EVTFLAG_SHIFT ;
 struct vmbus_evtflags* VMBUS_PCPU_GET (struct vmbus_softc*,int ,int) ;
 int VMBUS_SINT_MESSAGE ;
 scalar_t__ atomic_testandclear_long (int *,int ) ;
 int event_flags ;
 int vmbus_event_flags_proc (struct vmbus_softc*,int ,int) ;

void
vmbus_event_proc_compat(struct vmbus_softc *sc, int cpu)
{
 struct vmbus_evtflags *eventf;

 eventf = VMBUS_PCPU_GET(sc, event_flags, cpu) + VMBUS_SINT_MESSAGE;
 if (atomic_testandclear_long(&eventf->evt_flags[0], 0)) {
  vmbus_event_flags_proc(sc, sc->vmbus_rx_evtflags,
      VMBUS_CHAN_MAX_COMPAT >> VMBUS_EVTFLAG_SHIFT);
 }
}
