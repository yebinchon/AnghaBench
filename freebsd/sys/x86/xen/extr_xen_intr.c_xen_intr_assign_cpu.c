
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct xenisrc {scalar_t__ xi_type; scalar_t__ xi_cpu; int xi_port; } ;
struct intsrc {int dummy; } ;
struct evtchn_bind_vcpu {scalar_t__ vcpu; int port; } ;
struct TYPE_2__ {scalar_t__ pc_vcpu_id; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int EVTCHNOP_bind_vcpu ;
 scalar_t__ EVTCHN_TYPE_IPI ;
 scalar_t__ EVTCHN_TYPE_VIRQ ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_bind_vcpu*) ;
 scalar_t__ apic_cpuid (scalar_t__) ;
 int evtchn_cpu_mask_port (scalar_t__,int ) ;
 int evtchn_cpu_unmask_port (scalar_t__,int ) ;
 int evtchn_test_and_set_mask (int ) ;
 int evtchn_unmask_port (int ) ;
 int is_valid_evtchn (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 TYPE_1__* pcpu_find (scalar_t__) ;
 int xen_intr_isrc_lock ;
 scalar_t__ xen_vector_callback_enabled ;

__attribute__((used)) static int
xen_intr_assign_cpu(struct intsrc *base_isrc, u_int apic_id)
{
 return (EOPNOTSUPP);

}
