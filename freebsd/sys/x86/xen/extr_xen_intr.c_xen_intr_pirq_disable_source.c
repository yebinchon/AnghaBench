
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenisrc {scalar_t__ xi_edgetrigger; int xi_port; } ;
struct intsrc {int dummy; } ;


 int PIC_EOI ;
 int evtchn_mask_port (int ) ;
 int xen_intr_pirq_eoi_source (struct intsrc*) ;

__attribute__((used)) static void
xen_intr_pirq_disable_source(struct intsrc *base_isrc, int eoi)
{
 struct xenisrc *isrc;

 isrc = (struct xenisrc *)base_isrc;

 if (isrc->xi_edgetrigger == 0)
  evtchn_mask_port(isrc->xi_port);
 if (eoi == PIC_EOI)
  xen_intr_pirq_eoi_source(base_isrc);
}
