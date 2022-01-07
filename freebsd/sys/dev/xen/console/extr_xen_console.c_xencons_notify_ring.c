
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_priv {int evtchn; int * intr_handle; } ;
struct evtchn_send {int port; } ;


 int EVTCHNOP_send ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_send*) ;
 scalar_t__ __predict_true (int ) ;
 int xen_intr_signal (int *) ;

__attribute__((used)) static void
xencons_notify_ring(struct xencons_priv *cons)
{





 if (__predict_true(cons->intr_handle != ((void*)0)))
  xen_intr_signal(cons->intr_handle);
 else {
  struct evtchn_send send = {
   .port = cons->evtchn
  };

  HYPERVISOR_event_channel_op(EVTCHNOP_send, &send);
 }
}
