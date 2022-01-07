
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xen_intr_handle_t ;
typedef int u_int ;
struct xenisrc {int xi_close; } ;
struct evtchn_alloc_unbound {int port; int remote_dom; int dom; } ;
typedef struct evtchn_alloc_unbound evtchn_close_t ;
typedef enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;


 int DOMID_SELF ;
 int EVTCHNOP_alloc_unbound ;
 int EVTCHNOP_close ;
 int EVTCHN_TYPE_PORT ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_alloc_unbound*) ;
 int device_get_nameunit (int ) ;
 int panic (char*) ;
 int xen_intr_bind_isrc (struct xenisrc**,int ,int ,int ,int ,int ,void*,int,int *) ;

int
xen_intr_alloc_and_bind_local_port(device_t dev, u_int remote_domain,
    driver_filter_t filter, driver_intr_t handler, void *arg,
    enum intr_type flags, xen_intr_handle_t *port_handlep)
{
 struct xenisrc *isrc;
 struct evtchn_alloc_unbound alloc_unbound;
 int error;

 alloc_unbound.dom = DOMID_SELF;
 alloc_unbound.remote_dom = remote_domain;
 error = HYPERVISOR_event_channel_op(EVTCHNOP_alloc_unbound,
      &alloc_unbound);
 if (error != 0) {




  return (-error);
 }

 error = xen_intr_bind_isrc(&isrc, alloc_unbound.port, EVTCHN_TYPE_PORT,
     device_get_nameunit(dev), filter, handler, arg, flags,
     port_handlep);
 if (error != 0) {
  evtchn_close_t close = { .port = alloc_unbound.port };
  if (HYPERVISOR_event_channel_op(EVTCHNOP_close, &close))
   panic("EVTCHNOP_close failed");
  return (error);
 }

 isrc->xi_close = 1;
 return (0);
}
