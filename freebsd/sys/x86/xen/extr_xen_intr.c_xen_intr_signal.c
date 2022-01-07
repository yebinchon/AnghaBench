
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xen_intr_handle_t ;
struct xenisrc {scalar_t__ xi_type; int xi_port; } ;
struct evtchn_send {int port; } ;


 int EVTCHNOP_send ;
 scalar_t__ EVTCHN_TYPE_IPI ;
 scalar_t__ EVTCHN_TYPE_PORT ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_send*) ;
 int KASSERT (int,char*) ;
 struct xenisrc* xen_intr_isrc (int ) ;

void
xen_intr_signal(xen_intr_handle_t handle)
{
 struct xenisrc *isrc;

 isrc = xen_intr_isrc(handle);
 if (isrc != ((void*)0)) {
  KASSERT(isrc->xi_type == EVTCHN_TYPE_PORT ||
   isrc->xi_type == EVTCHN_TYPE_IPI,
   ("evtchn_signal on something other than a local port"));
  struct evtchn_send send = { .port = isrc->xi_port };
  (void)HYPERVISOR_event_channel_op(EVTCHNOP_send, &send);
 }
}
