
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int explain; int ents; int number; int cputype; } ;


 int SANDY_BRIDGE_COUNT ;
 int explain_name_sb ;
 int sandy_bridge ;
 int strcpy (int ,char*) ;
 TYPE_1__ the_cpu ;

__attribute__((used)) static void
set_sandybridge(void)
{
 strcpy(the_cpu.cputype, "SandyBridge PMC");
 the_cpu.number = SANDY_BRIDGE_COUNT;
 the_cpu.ents = sandy_bridge;
 the_cpu.explain = explain_name_sb;
}
