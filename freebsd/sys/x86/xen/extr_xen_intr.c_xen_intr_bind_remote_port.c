
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xen_intr_handle_t ;
typedef void* u_int ;
struct xenisrc {int xi_close; } ;
struct evtchn_bind_interdomain {int port; int local_port; void* remote_port; void* remote_dom; } ;
typedef struct evtchn_bind_interdomain evtchn_close_t ;
typedef enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;


 int EVTCHNOP_bind_interdomain ;
 int EVTCHNOP_close ;
 int EVTCHN_TYPE_PORT ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_bind_interdomain*) ;
 int device_get_nameunit (int ) ;
 int panic (char*) ;
 int xen_intr_bind_isrc (struct xenisrc**,int ,int ,int ,int ,int ,void*,int,int *) ;

int
xen_intr_bind_remote_port(device_t dev, u_int remote_domain,
    u_int remote_port, driver_filter_t filter, driver_intr_t handler,
    void *arg, enum intr_type flags, xen_intr_handle_t *port_handlep)
{
 struct xenisrc *isrc;
 struct evtchn_bind_interdomain bind_interdomain;
 int error;

 bind_interdomain.remote_dom = remote_domain;
 bind_interdomain.remote_port = remote_port;
 error = HYPERVISOR_event_channel_op(EVTCHNOP_bind_interdomain,
         &bind_interdomain);
 if (error != 0) {




  return (-error);
 }

 error = xen_intr_bind_isrc(&isrc, bind_interdomain.local_port,
     EVTCHN_TYPE_PORT, device_get_nameunit(dev), filter, handler, arg,
     flags, port_handlep);
 if (error) {
  evtchn_close_t close = { .port = bind_interdomain.local_port };
  if (HYPERVISOR_event_channel_op(EVTCHNOP_close, &close))
   panic("EVTCHNOP_close failed");
  return (error);
 }





 isrc->xi_close = 1;
 return (0);
}
