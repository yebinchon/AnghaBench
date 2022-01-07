
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenisrc {size_t xi_port; int xi_pirq; scalar_t__ xi_edgetrigger; } ;
struct physdev_irq_status_query {int flags; int irq; } ;
struct intsrc {int dummy; } ;
struct evtchn_bind_pirq {size_t port; int flags; int pirq; } ;


 int BIND_PIRQ__WILL_SHARE ;
 int EVTCHNOP_bind_pirq ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_bind_pirq*) ;
 int HYPERVISOR_physdev_op (int ,struct physdev_irq_status_query*) ;
 int KASSERT (int ,char*) ;
 int PHYSDEVOP_irq_status_query ;
 int XENIRQSTAT_needs_eoi ;
 int evtchn_unmask_port (size_t) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*,int ) ;
 int xen_intr_isrc_lock ;
 int xen_intr_pirq_eoi_map ;
 int xen_intr_pirq_eoi_map_enabled ;
 struct xenisrc** xen_intr_port_to_isrc ;
 int xen_set_bit (int ,int ) ;

__attribute__((used)) static void
xen_intr_pirq_enable_intr(struct intsrc *base_isrc)
{
 struct xenisrc *isrc;
 struct evtchn_bind_pirq bind_pirq;
 struct physdev_irq_status_query irq_status;
 int error;

 isrc = (struct xenisrc *)base_isrc;

 if (!xen_intr_pirq_eoi_map_enabled) {
  irq_status.irq = isrc->xi_pirq;
  error = HYPERVISOR_physdev_op(PHYSDEVOP_irq_status_query,
      &irq_status);
  if (error)
   panic("unable to get status of IRQ#%d", isrc->xi_pirq);

  if (irq_status.flags & XENIRQSTAT_needs_eoi) {




   xen_set_bit(isrc->xi_pirq, xen_intr_pirq_eoi_map);
  }
 }

 bind_pirq.pirq = isrc->xi_pirq;
 bind_pirq.flags = isrc->xi_edgetrigger ? 0 : BIND_PIRQ__WILL_SHARE;
 error = HYPERVISOR_event_channel_op(EVTCHNOP_bind_pirq, &bind_pirq);
 if (error)
  panic("unable to bind IRQ#%d", isrc->xi_pirq);

 isrc->xi_port = bind_pirq.port;

 mtx_lock(&xen_intr_isrc_lock);
 KASSERT((xen_intr_port_to_isrc[bind_pirq.port] == ((void*)0)),
     ("trying to override an already setup event channel port"));
 xen_intr_port_to_isrc[bind_pirq.port] = isrc;
 mtx_unlock(&xen_intr_isrc_lock);

 evtchn_unmask_port(isrc->xi_port);
}
