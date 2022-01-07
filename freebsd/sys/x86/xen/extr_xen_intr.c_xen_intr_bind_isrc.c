
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xen_intr_handle_t ;
struct xenisrc {size_t xi_port; int xi_intsrc; int xi_vector; int xi_refcount; } ;
typedef size_t evtchn_port_t ;
typedef enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef enum evtchn_type { ____Placeholder_evtchn_type } evtchn_type ;
typedef int * driver_intr_t ;
typedef int * driver_filter_t ;


 int EINVAL ;
 int ENOSPC ;
 int EVTCHN_TYPE_PORT ;
 int XEN_ALLOCATE_VECTOR ;
 int intr_next_cpu (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,char const*) ;
 int refcount_init (int *,int) ;
 int xen_intr_add_handler (char const*,int *,int *,void*,int,int *) ;
 struct xenisrc* xen_intr_alloc_isrc (int,int ) ;
 int xen_intr_assign_cpu (int *,int ) ;
 struct xenisrc* xen_intr_find_unused_isrc (int) ;
 int xen_intr_isrc_lock ;
 struct xenisrc** xen_intr_port_to_isrc ;
 int xen_intr_release_isrc (struct xenisrc*) ;

__attribute__((used)) static int
xen_intr_bind_isrc(struct xenisrc **isrcp, evtchn_port_t local_port,
    enum evtchn_type type, const char *intr_owner, driver_filter_t filter,
    driver_intr_t handler, void *arg, enum intr_type flags,
    xen_intr_handle_t *port_handlep)
{
 struct xenisrc *isrc;
 int error;

 *isrcp = ((void*)0);
 if (port_handlep == ((void*)0)) {
  printf("%s: xen_intr_bind_isrc: Bad event handle\n",
      intr_owner);
  return (EINVAL);
 }

 mtx_lock(&xen_intr_isrc_lock);
 isrc = xen_intr_find_unused_isrc(type);
 if (isrc == ((void*)0)) {
  isrc = xen_intr_alloc_isrc(type, XEN_ALLOCATE_VECTOR);
  if (isrc == ((void*)0)) {
   mtx_unlock(&xen_intr_isrc_lock);
   return (ENOSPC);
  }
 }
 isrc->xi_port = local_port;
 xen_intr_port_to_isrc[local_port] = isrc;
 refcount_init(&isrc->xi_refcount, 1);
 mtx_unlock(&xen_intr_isrc_lock);


 *port_handlep = &isrc->xi_vector;
 if (filter == ((void*)0) && handler == ((void*)0)) {





  *isrcp = isrc;
  return (0);
 }

 error = xen_intr_add_handler(intr_owner, filter, handler, arg, flags,
     *port_handlep);
 if (error != 0) {
  xen_intr_release_isrc(isrc);
  return (error);
 }
 *isrcp = isrc;
 return (0);
}
