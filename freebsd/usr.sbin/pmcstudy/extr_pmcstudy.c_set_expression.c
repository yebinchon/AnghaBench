
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int number; char* cputype; TYPE_1__* ents; } ;
struct TYPE_3__ {char* name; scalar_t__ counters_required; int thresh; int command; int func; } ;


 int command ;
 int exit (int) ;
 int expression ;
 scalar_t__ max_pmc_counters ;
 int printf (char*,...) ;
 scalar_t__ run_all ;
 scalar_t__ strcmp (char const*,char*) ;
 TYPE_2__ the_cpu ;
 int threshold ;

__attribute__((used)) static int
set_expression(const char *name)
{
 int found = 0, i;
 for(i=0 ; i< the_cpu.number; i++) {
  if (strcmp(name, the_cpu.ents[i].name) == 0) {
   found = 1;
   expression = the_cpu.ents[i].func;
   command = the_cpu.ents[i].command;
   threshold = the_cpu.ents[i].thresh;
   if (the_cpu.ents[i].counters_required > max_pmc_counters) {
    printf("Test %s requires that the CPU have %d counters and this CPU has only %d\n",
           the_cpu.ents[i].name,
           the_cpu.ents[i].counters_required, max_pmc_counters);
    printf("Sorry this test can not be run\n");
    if (run_all == 0) {
     exit(-1);
    } else {
     return(-1);
    }
   }
   break;
  }
 }
 if (!found) {
  printf("For CPU type %s we have no expression:%s\n",
         the_cpu.cputype, name);
  exit(-1);
 }
 return(0);
}
