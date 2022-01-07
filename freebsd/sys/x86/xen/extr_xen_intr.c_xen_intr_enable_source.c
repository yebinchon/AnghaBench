
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenisrc {scalar_t__ xi_masked; int xi_port; } ;
struct intsrc {int dummy; } ;


 int evtchn_unmask_port (int ) ;

__attribute__((used)) static void
xen_intr_enable_source(struct intsrc *base_isrc)
{
 struct xenisrc *isrc;

 isrc = (struct xenisrc *)base_isrc;

 if (isrc->xi_masked == 0)
  evtchn_unmask_port(isrc->xi_port);
}
