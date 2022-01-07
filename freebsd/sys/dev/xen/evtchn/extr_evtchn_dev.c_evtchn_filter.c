
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_evtchn {int enabled; int port; } ;


 int FILTER_SCHEDULE_THREAD ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int ) ;
 int evtchn_dev ;
 int evtchn_mask_port (int ) ;

__attribute__((used)) static int
evtchn_filter(void *arg)
{
 struct user_evtchn *evtchn;

 evtchn = arg;

 if (!evtchn->enabled && bootverbose) {
  device_printf(evtchn_dev,
      "Received upcall for disabled event channel %d\n",
      evtchn->port);
 }

 evtchn_mask_port(evtchn->port);
 evtchn->enabled = 0;

 return (FILTER_SCHEDULE_THREAD);
}
