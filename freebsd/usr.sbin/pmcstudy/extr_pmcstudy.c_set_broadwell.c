
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int explain; int ents; int number; int cputype; } ;


 int BROADWELL_COUNT ;
 int broadwell ;
 int explain_name_broad ;
 int strcpy (int ,char*) ;
 TYPE_1__ the_cpu ;

__attribute__((used)) static void
set_broadwell(void)
{
 strcpy(the_cpu.cputype, "HASWELL PMC");
 the_cpu.number = BROADWELL_COUNT;
 the_cpu.ents = broadwell;
 the_cpu.explain = explain_name_broad;
}
