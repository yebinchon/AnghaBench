
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xen_intr_handle_t ;
struct xenisrc {int xi_port; } ;
typedef int evtchn_port_t ;


 struct xenisrc* xen_intr_isrc (int ) ;

evtchn_port_t
xen_intr_port(xen_intr_handle_t handle)
{
 struct xenisrc *isrc;

 isrc = xen_intr_isrc(handle);
 if (isrc == ((void*)0))
  return (0);

 return (isrc->xi_port);
}
