
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenisrc {int xi_cpu; size_t xi_port; int xi_virq; int xi_intsrc; } ;
struct evtchn_bind_virq {int vcpu; size_t port; int virq; } ;
struct TYPE_2__ {int pc_vcpu_id; } ;


 int EVTCHNOP_bind_virq ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_bind_virq*) ;
 int * cpu_apic_ids ;
 int evtchn_unmask_port (size_t) ;
 int panic (char*,int ,int,...) ;
 TYPE_1__* pcpu_find (int) ;
 int xen_intr_assign_cpu (int *,int ) ;
 struct xenisrc** xen_intr_port_to_isrc ;

__attribute__((used)) static void
xen_rebind_virq(struct xenisrc *isrc)
{
 int cpu = isrc->xi_cpu;
 int vcpu_id = pcpu_find(cpu)->pc_vcpu_id;
 int error;
 struct evtchn_bind_virq bind_virq = { .virq = isrc->xi_virq,
                                       .vcpu = vcpu_id };

 error = HYPERVISOR_event_channel_op(EVTCHNOP_bind_virq,
                                     &bind_virq);
 if (error != 0)
  panic("unable to rebind xen VIRQ#%d: %d", isrc->xi_virq, error);

 isrc->xi_port = bind_virq.port;
 isrc->xi_cpu = 0;
 xen_intr_port_to_isrc[bind_virq.port] = isrc;
 evtchn_unmask_port(bind_virq.port);
}
