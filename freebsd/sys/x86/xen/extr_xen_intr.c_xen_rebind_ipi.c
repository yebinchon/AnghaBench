
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenisrc {int xi_cpu; size_t xi_port; int xi_intsrc; } ;
struct evtchn_bind_ipi {int vcpu; size_t port; } ;
struct TYPE_2__ {int pc_vcpu_id; } ;


 int EVTCHNOP_bind_ipi ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_bind_ipi*) ;
 int * cpu_apic_ids ;
 int evtchn_unmask_port (size_t) ;
 int panic (char*,...) ;
 TYPE_1__* pcpu_find (int) ;
 int xen_intr_assign_cpu (int *,int ) ;
 struct xenisrc** xen_intr_port_to_isrc ;

__attribute__((used)) static void
xen_rebind_ipi(struct xenisrc *isrc)
{
 panic("Resume IPI event channel on UP");

}
