
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int explain; int ents; int number; int cputype; } ;


 int IVY_BRIDGE_COUNT ;
 int explain_name_ib ;
 int ivy_bridge ;
 int strcpy (int ,char*) ;
 TYPE_1__ the_cpu ;

__attribute__((used)) static void
set_ivybridge(void)
{
 strcpy(the_cpu.cputype, "IvyBridge PMC");
 the_cpu.number = IVY_BRIDGE_COUNT;
 the_cpu.ents = ivy_bridge;
 the_cpu.explain = explain_name_ib;
}
