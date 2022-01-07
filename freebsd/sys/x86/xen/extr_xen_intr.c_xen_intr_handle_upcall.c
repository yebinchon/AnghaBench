
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int evtchn_pending_sel; scalar_t__ evtchn_upcall_pending; } ;
typedef TYPE_1__ vcpu_info_t ;
typedef unsigned long u_long ;
typedef scalar_t__ u_int ;
struct xenisrc {scalar_t__ xi_cpu; int xi_intsrc; } ;
struct xen_intr_pcpu_data {scalar_t__ last_processed_l1i; scalar_t__ last_processed_l2i; int * evtchn_intrcnt; } ;
struct trapframe {int dummy; } ;
struct TYPE_7__ {int * evtchn_pending; } ;
typedef TYPE_2__ shared_info_t ;


 TYPE_1__* DPCPU_GET (int ) ;
 struct xen_intr_pcpu_data* DPCPU_PTR (int ) ;
 TYPE_2__* HYPERVISOR_shared_info ;
 int KASSERT (int,char*) ;
 scalar_t__ LONG_BIT ;
 scalar_t__ PCPU_GET (int ) ;
 scalar_t__ __predict_false (int ) ;
 unsigned long atomic_readandclear_long (int *) ;
 int cpuid ;
 int critical_enter () ;
 int critical_exit () ;
 int ffsl (unsigned long) ;
 int intr_execute_handlers (int *,struct trapframe*) ;
 int lapic_eoi () ;
 int synch_clear_bit (scalar_t__,int *) ;
 int vcpu_info ;
 int wmb () ;
 scalar_t__ xen_evtchn_needs_ack ;
 scalar_t__ xen_hvm_domain () ;
 unsigned long xen_intr_active_ports (struct xen_intr_pcpu_data*,TYPE_2__*,scalar_t__) ;
 int xen_intr_pcpu ;
 struct xenisrc** xen_intr_port_to_isrc ;
 int xen_vector_callback_enabled ;

void
xen_intr_handle_upcall(struct trapframe *trap_frame)
{
 u_int l1i, l2i, port, cpu;
 u_long masked_l1, masked_l2;
 struct xenisrc *isrc;
 shared_info_t *s;
 vcpu_info_t *v;
 struct xen_intr_pcpu_data *pc;
 u_long l1, l2;





 critical_enter();

 cpu = PCPU_GET(cpuid);
 pc = DPCPU_PTR(xen_intr_pcpu);
 s = HYPERVISOR_shared_info;
 v = DPCPU_GET(vcpu_info);

 if (xen_hvm_domain() && !xen_vector_callback_enabled) {
  KASSERT((cpu == 0), ("Fired PCI event callback on wrong CPU"));
 }

 v->evtchn_upcall_pending = 0;
 l1 = atomic_readandclear_long(&v->evtchn_pending_sel);

 l1i = pc->last_processed_l1i;
 l2i = pc->last_processed_l2i;
 (*pc->evtchn_intrcnt)++;

 while (l1 != 0) {

  l1i = (l1i + 1) % LONG_BIT;
  masked_l1 = l1 & ((~0UL) << l1i);

  if (masked_l1 == 0) {




   l1i = LONG_BIT - 1;
   l2i = LONG_BIT - 1;
   continue;
  }
  l1i = ffsl(masked_l1) - 1;

  do {
   l2 = xen_intr_active_ports(pc, s, l1i);

   l2i = (l2i + 1) % LONG_BIT;
   masked_l2 = l2 & ((~0UL) << l2i);

   if (masked_l2 == 0) {

    l2i = LONG_BIT - 1;
    break;
   }
   l2i = ffsl(masked_l2) - 1;


   port = (l1i * LONG_BIT) + l2i;
   synch_clear_bit(port, &s->evtchn_pending[0]);

   isrc = xen_intr_port_to_isrc[port];
   if (__predict_false(isrc == ((void*)0)))
    continue;


   KASSERT((isrc->xi_cpu == PCPU_GET(cpuid)),
    ("Received unexpected event on vCPU#%d, event bound to vCPU#%d",
    PCPU_GET(cpuid), isrc->xi_cpu));

   intr_execute_handlers(&isrc->xi_intsrc, trap_frame);





   pc->last_processed_l1i = l1i;
   pc->last_processed_l2i = l2i;

  } while (l2i != LONG_BIT - 1);

  l2 = xen_intr_active_ports(pc, s, l1i);
  if (l2 == 0) {




   l1 &= ~(1UL << l1i);
  }
 }

 if (xen_evtchn_needs_ack)
  lapic_eoi();

 critical_exit();
}
