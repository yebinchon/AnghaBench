
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int MSEC_2_TICKS (scalar_t__) ;
 int OPAL_EVENT_MSG_PENDING ;
 int OPAL_POLL_EVENTS ;
 int kproc_exit (int ) ;
 int opal_call (int ,int ) ;
 int opal_handle_messages () ;
 int opal_hb_proc ;
 scalar_t__ opal_heartbeat_ms ;
 int tsleep (int ,int ,char*,int ) ;
 int vtophys (int*) ;

__attribute__((used)) static void
opal_heartbeat(void)
{
 uint64_t events;

 if (opal_heartbeat_ms == 0)
  kproc_exit(0);

 while (1) {
  events = 0;

  opal_call(OPAL_POLL_EVENTS, vtophys(&events));
  if (events & OPAL_EVENT_MSG_PENDING)
   opal_handle_messages();
  tsleep(opal_hb_proc, 0, "opal",
      MSEC_2_TICKS(opal_heartbeat_ms));
 }
}
