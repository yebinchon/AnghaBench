
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xen_intr_handle_t ;
typedef size_t u_int ;
struct TYPE_3__ {int is_event; } ;
struct xenisrc {size_t xi_cpu; int xi_close; size_t xi_virq; TYPE_1__ xi_intsrc; } ;
struct evtchn_bind_virq {size_t virq; int vcpu; int port; } ;
typedef struct evtchn_bind_virq evtchn_close_t ;
typedef enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;
struct TYPE_4__ {int pc_vcpu_id; } ;


 int EVTCHNOP_bind_virq ;
 int EVTCHNOP_close ;
 int EVTCHN_TYPE_VIRQ ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_bind_virq*) ;
 int * cpu_apic_ids ;
 int device_get_nameunit (int ) ;
 int intr_event_bind (int ,size_t) ;
 int panic (char*) ;
 TYPE_2__* pcpu_find (size_t) ;
 int xen_intr_assign_cpu (TYPE_1__*,int ) ;
 int xen_intr_bind_isrc (struct xenisrc**,int ,int ,int ,int ,int ,void*,int,int *) ;
 int xen_intr_unbind (int ) ;

int
xen_intr_bind_virq(device_t dev, u_int virq, u_int cpu,
    driver_filter_t filter, driver_intr_t handler, void *arg,
    enum intr_type flags, xen_intr_handle_t *port_handlep)
{
 int vcpu_id = pcpu_find(cpu)->pc_vcpu_id;
 struct xenisrc *isrc;
 struct evtchn_bind_virq bind_virq = { .virq = virq, .vcpu = vcpu_id };
 int error;

 isrc = ((void*)0);
 error = HYPERVISOR_event_channel_op(EVTCHNOP_bind_virq, &bind_virq);
 if (error != 0) {




  return (-error);
 }

 error = xen_intr_bind_isrc(&isrc, bind_virq.port, EVTCHN_TYPE_VIRQ,
     device_get_nameunit(dev), filter, handler, arg, flags,
     port_handlep);






 if (error != 0) {
  evtchn_close_t close = { .port = bind_virq.port };

  xen_intr_unbind(*port_handlep);
  if (HYPERVISOR_event_channel_op(EVTCHNOP_close, &close))
   panic("EVTCHNOP_close failed");
  return (error);
 }
 isrc->xi_close = 1;
 isrc->xi_virq = virq;

 return (0);
}
