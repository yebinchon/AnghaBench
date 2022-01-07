
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xen_intr_handle_t ;
typedef int u_int ;
struct xenisrc {int xi_cpu; int xi_close; int xi_intsrc; } ;
struct evtchn_bind_ipi {int vcpu; int port; } ;
typedef int name ;
typedef struct evtchn_bind_ipi evtchn_close_t ;
typedef enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef int driver_filter_t ;
struct TYPE_2__ {int pc_vcpu_id; } ;


 int EOPNOTSUPP ;
 int EVTCHNOP_bind_ipi ;
 int EVTCHNOP_close ;
 int EVTCHN_TYPE_IPI ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_bind_ipi*) ;
 int MAXCOMLEN ;
 int * cpu_apic_ids ;
 int panic (char*) ;
 TYPE_1__* pcpu_find (int) ;
 int snprintf (char*,int,char*,int) ;
 int xen_intr_assign_cpu (int *,int ) ;
 int xen_intr_bind_isrc (struct xenisrc**,int ,int ,char*,int ,int *,int *,int,int *) ;
 int xen_intr_unbind (int ) ;

int
xen_intr_alloc_and_bind_ipi(u_int cpu, driver_filter_t filter,
    enum intr_type flags, xen_intr_handle_t *port_handlep)
{
 return (EOPNOTSUPP);

}
