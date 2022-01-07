
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * xen_intr_handle_t ;
typedef size_t evtchn_port_t ;
struct TYPE_2__ {int xi_vector; int xi_refcount; } ;


 int EINVAL ;
 size_t NR_EVENT_CHANNELS ;
 int is_valid_evtchn (size_t) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int refcount_acquire (int *) ;
 int xen_intr_isrc_lock ;
 TYPE_1__** xen_intr_port_to_isrc ;

int
xen_intr_get_evtchn_from_port(evtchn_port_t port, xen_intr_handle_t *handlep)
{

 if (!is_valid_evtchn(port) || port >= NR_EVENT_CHANNELS)
  return (EINVAL);

 if (handlep == ((void*)0)) {
  return (EINVAL);
 }

 mtx_lock(&xen_intr_isrc_lock);
 if (xen_intr_port_to_isrc[port] == ((void*)0)) {
  mtx_unlock(&xen_intr_isrc_lock);
  return (EINVAL);
 }
 refcount_acquire(&xen_intr_port_to_isrc[port]->xi_refcount);
 mtx_unlock(&xen_intr_isrc_lock);


 *handlep = &xen_intr_port_to_isrc[port]->xi_vector;

 return (0);
}
