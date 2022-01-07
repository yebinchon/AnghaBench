
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenisrc {int xi_port; } ;
struct intsrc {int dummy; } ;


 int evtchn_unmask_port (int ) ;

__attribute__((used)) static void
xen_intr_enable_intr(struct intsrc *base_isrc)
{
 struct xenisrc *isrc = (struct xenisrc *)base_isrc;

 evtchn_unmask_port(isrc->xi_port);
}
