
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ is_handlers; } ;
struct xenisrc {scalar_t__ xi_type; TYPE_1__ xi_intsrc; } ;
typedef enum evtchn_type { ____Placeholder_evtchn_type } evtchn_type ;


 scalar_t__ EVTCHN_TYPE_UNBOUND ;
 int KASSERT (int,char*) ;
 scalar_t__ first_evtchn_irq ;
 scalar_t__ intr_lookup_source (scalar_t__) ;
 int mtx_owned (int *) ;
 int xen_intr_auto_vector_count ;
 int xen_intr_isrc_lock ;

__attribute__((used)) static struct xenisrc *
xen_intr_find_unused_isrc(enum evtchn_type type)
{
 int isrc_idx;

 KASSERT(mtx_owned(&xen_intr_isrc_lock), ("Evtchn isrc lock not held"));

 for (isrc_idx = 0; isrc_idx < xen_intr_auto_vector_count; isrc_idx ++) {
  struct xenisrc *isrc;
  u_int vector;

  vector = first_evtchn_irq + isrc_idx;
  isrc = (struct xenisrc *)intr_lookup_source(vector);
  if (isrc != ((void*)0)
   && isrc->xi_type == EVTCHN_TYPE_UNBOUND) {
   KASSERT(isrc->xi_intsrc.is_handlers == 0,
       ("Free evtchn still has handlers"));
   isrc->xi_type = type;
   return (isrc);
  }
 }
 return (((void*)0));
}
