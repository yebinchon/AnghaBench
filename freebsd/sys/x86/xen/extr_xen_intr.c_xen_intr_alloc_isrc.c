
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * is_pic; } ;
struct xenisrc {int xi_vector; int xi_type; TYPE_1__ xi_intsrc; } ;
typedef enum evtchn_type { ____Placeholder_evtchn_type } evtchn_type ;


 int EVTCHN_TYPE_PIRQ ;
 int KASSERT (int ,char*) ;
 int M_WAITOK ;
 int M_XENINTR ;
 int M_ZERO ;
 int NR_EVENT_CHANNELS ;
 int first_evtchn_irq ;
 int * intr_lookup_source (int) ;
 int intr_register_source (TYPE_1__*) ;
 struct xenisrc* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_owned (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*) ;
 int xen_intr_auto_vector_count ;
 int xen_intr_isrc_lock ;
 int xen_intr_pic ;
 int xen_intr_pirq_pic ;

__attribute__((used)) static struct xenisrc *
xen_intr_alloc_isrc(enum evtchn_type type, int vector)
{
 static int warned;
 struct xenisrc *isrc;

 KASSERT(mtx_owned(&xen_intr_isrc_lock), ("Evtchn alloc lock not held"));

 if (xen_intr_auto_vector_count > NR_EVENT_CHANNELS) {
  if (!warned) {
   warned = 1;
   printf("xen_intr_alloc: Event channels exhausted.\n");
  }
  return (((void*)0));
 }

 if (type != EVTCHN_TYPE_PIRQ) {
  vector = first_evtchn_irq + xen_intr_auto_vector_count;
  xen_intr_auto_vector_count++;
 }

 KASSERT((intr_lookup_source(vector) == ((void*)0)),
     ("Trying to use an already allocated vector"));

 mtx_unlock(&xen_intr_isrc_lock);
 isrc = malloc(sizeof(*isrc), M_XENINTR, M_WAITOK | M_ZERO);
 isrc->xi_intsrc.is_pic =
     (type == EVTCHN_TYPE_PIRQ) ? &xen_intr_pirq_pic : &xen_intr_pic;
 isrc->xi_vector = vector;
 isrc->xi_type = type;
 intr_register_source(&isrc->xi_intsrc);
 mtx_lock(&xen_intr_isrc_lock);

 return (isrc);
}
