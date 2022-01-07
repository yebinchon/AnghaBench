
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xen_intr_handle_t ;
struct xenisrc {int dummy; } ;


 int KASSERT (int,char*) ;
 int first_evtchn_irq ;
 scalar_t__ intr_lookup_source (int) ;
 int xen_intr_auto_vector_count ;

__attribute__((used)) static struct xenisrc *
xen_intr_isrc(xen_intr_handle_t handle)
{
 int vector;

 if (handle == ((void*)0))
  return (((void*)0));

 vector = *(int *)handle;
 KASSERT(vector >= first_evtchn_irq &&
     vector < (first_evtchn_irq + xen_intr_auto_vector_count),
     ("Xen interrupt vector is out of range"));

 return ((struct xenisrc *)intr_lookup_source(vector));
}
