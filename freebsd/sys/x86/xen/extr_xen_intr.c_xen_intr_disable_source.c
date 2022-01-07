
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenisrc {int xi_masked; int xi_port; } ;
struct intsrc {int dummy; } ;


 int evtchn_test_and_set_mask (int ) ;

__attribute__((used)) static void
xen_intr_disable_source(struct intsrc *base_isrc, int eoi)
{
 struct xenisrc *isrc;

 isrc = (struct xenisrc *)base_isrc;
 isrc->xi_masked = !!evtchn_test_and_set_mask(isrc->xi_port);
}
