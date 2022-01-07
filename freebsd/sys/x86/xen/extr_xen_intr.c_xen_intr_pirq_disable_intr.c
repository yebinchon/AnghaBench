
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenisrc {size_t xi_port; int xi_pirq; } ;
struct intsrc {int dummy; } ;
struct evtchn_close {size_t port; } ;


 int EVTCHNOP_close ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_close*) ;
 int evtchn_mask_port (size_t) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*,size_t,int ) ;
 int xen_intr_isrc_lock ;
 int ** xen_intr_port_to_isrc ;

__attribute__((used)) static void
xen_intr_pirq_disable_intr(struct intsrc *base_isrc)
{
 struct xenisrc *isrc;
 struct evtchn_close close;
 int error;

 isrc = (struct xenisrc *)base_isrc;

 evtchn_mask_port(isrc->xi_port);

 close.port = isrc->xi_port;
 error = HYPERVISOR_event_channel_op(EVTCHNOP_close, &close);
 if (error)
  panic("unable to close event channel %d IRQ#%d",
      isrc->xi_port, isrc->xi_pirq);

 mtx_lock(&xen_intr_isrc_lock);
 xen_intr_port_to_isrc[isrc->xi_port] = ((void*)0);
 mtx_unlock(&xen_intr_isrc_lock);

 isrc->xi_port = 0;
}
