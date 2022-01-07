
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {int cpu; struct counters* next_cpu; } ;


 int MAX_CPU ;
 struct counters* cnts ;
 struct counters** glob_cpu ;
 int ncnts ;
 int printf (char*,int) ;

__attribute__((used)) static void
lace_cpus_together(void)
{
 int i, j, lace_cpu;
 struct counters *cpat, *at;

 for(i=0; i<ncnts; i++) {
  cpat = &cnts[i];
  if (cpat->next_cpu) {

   continue;
  }
  lace_cpu = cpat->cpu;
  if (lace_cpu >= MAX_CPU) {
   printf("CPU %d to big\n", lace_cpu);
   continue;
  }
  if (glob_cpu[lace_cpu] == ((void*)0)) {
   glob_cpu[lace_cpu] = cpat;
  } else {

   continue;
  }

  for(j=(i+1); j<ncnts; j++) {
   at = &cnts[j];
   if (at->next_cpu) {
    continue;
   }
   if (at->cpu == lace_cpu) {

    cpat->next_cpu = at;
    cpat = at;
   }
  }
 }
}
