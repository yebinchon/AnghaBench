
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenisrc {int xi_pirq; } ;
struct physdev_eoi {int irq; } ;
struct intsrc {int dummy; } ;


 int HYPERVISOR_physdev_op (int ,struct physdev_eoi*) ;
 int PHYSDEVOP_eoi ;
 int panic (char*,int ,int) ;
 int xen_intr_pirq_eoi_map ;
 scalar_t__ xen_test_bit (int ,int ) ;

__attribute__((used)) static void
xen_intr_pirq_eoi_source(struct intsrc *base_isrc)
{
 struct xenisrc *isrc;
 int error;

 isrc = (struct xenisrc *)base_isrc;

 if (xen_test_bit(isrc->xi_pirq, xen_intr_pirq_eoi_map)) {
  struct physdev_eoi eoi = { .irq = isrc->xi_pirq };

  error = HYPERVISOR_physdev_op(PHYSDEVOP_eoi, &eoi);
  if (error != 0)
   panic("Unable to EOI PIRQ#%d: %d\n",
       isrc->xi_pirq, error);
 }
}
