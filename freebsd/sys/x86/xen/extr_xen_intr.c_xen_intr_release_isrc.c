
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ is_handlers; } ;
struct xenisrc {size_t xi_port; scalar_t__ xi_close; int * xi_cookie; int xi_type; scalar_t__ xi_cpu; TYPE_1__ xi_intsrc; } ;
struct evtchn_close {size_t port; } ;


 int EVTCHNOP_close ;
 int EVTCHN_TYPE_UNBOUND ;
 scalar_t__ HYPERVISOR_event_channel_op (int ,struct evtchn_close*) ;
 int KASSERT (int,char*) ;
 int evtchn_clear_port (size_t) ;
 int evtchn_cpu_mask_port (scalar_t__,size_t) ;
 int evtchn_cpu_unmask_port (int ,size_t) ;
 int evtchn_mask_port (size_t) ;
 scalar_t__ is_valid_evtchn (size_t) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;
 int xen_intr_isrc_lock ;
 int ** xen_intr_port_to_isrc ;

__attribute__((used)) static int
xen_intr_release_isrc(struct xenisrc *isrc)
{

 mtx_lock(&xen_intr_isrc_lock);
 KASSERT(isrc->xi_intsrc.is_handlers == 0,
     ("Release called, but xenisrc still in use"));
 evtchn_mask_port(isrc->xi_port);
 evtchn_clear_port(isrc->xi_port);


 evtchn_cpu_mask_port(isrc->xi_cpu, isrc->xi_port);
 evtchn_cpu_unmask_port(0, isrc->xi_port);

 if (isrc->xi_close != 0 && is_valid_evtchn(isrc->xi_port)) {
  struct evtchn_close close = { .port = isrc->xi_port };
  if (HYPERVISOR_event_channel_op(EVTCHNOP_close, &close))
   panic("EVTCHNOP_close failed");
 }

 xen_intr_port_to_isrc[isrc->xi_port] = ((void*)0);
 isrc->xi_cpu = 0;
 isrc->xi_type = EVTCHN_TYPE_UNBOUND;
 isrc->xi_port = 0;
 isrc->xi_cookie = ((void*)0);
 mtx_unlock(&xen_intr_isrc_lock);
 return (0);
}
