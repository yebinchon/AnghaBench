
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_softc {int dummy; } ;
struct vmbus_evtflags {int evt_flags; } ;


 struct vmbus_evtflags* VMBUS_PCPU_GET (struct vmbus_softc*,int ,int) ;
 int VMBUS_SINT_MESSAGE ;
 int event_flags ;
 int event_flags_cnt ;
 int vmbus_event_flags_proc (struct vmbus_softc*,int ,struct vmbus_evtflags*) ;

void
vmbus_event_proc(struct vmbus_softc *sc, int cpu)
{
 struct vmbus_evtflags *eventf;





 eventf = VMBUS_PCPU_GET(sc, event_flags, cpu) + VMBUS_SINT_MESSAGE;
 vmbus_event_flags_proc(sc, eventf->evt_flags,
     VMBUS_PCPU_GET(sc, event_flags_cnt, cpu));
}
