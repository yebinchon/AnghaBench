
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xen_intr_handle_t ;
struct xenisrc {scalar_t__ xi_close; } ;
typedef int evtchn_port_t ;
typedef enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;


 int EVTCHN_TYPE_PORT ;
 int device_get_nameunit (int ) ;
 int xen_intr_bind_isrc (struct xenisrc**,int ,int ,int ,int ,int ,void*,int,int *) ;

int
xen_intr_bind_local_port(device_t dev, evtchn_port_t local_port,
    driver_filter_t filter, driver_intr_t handler, void *arg,
    enum intr_type flags, xen_intr_handle_t *port_handlep)
{
 struct xenisrc *isrc;
 int error;

 error = xen_intr_bind_isrc(&isrc, local_port, EVTCHN_TYPE_PORT,
     device_get_nameunit(dev), filter, handler, arg, flags,
     port_handlep);
 if (error != 0)
  return (error);





 isrc->xi_close = 0;
 return (0);
}
