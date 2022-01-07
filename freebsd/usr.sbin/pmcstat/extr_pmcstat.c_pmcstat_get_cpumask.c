
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuset_t ;


 int CPU_EMPTY (int *) ;
 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int EX_USAGE ;
 int assert (int) ;
 int errx (int ,char*,char const*) ;
 int strspn (char*,char*) ;
 int strtol (char const*,char**,int ) ;

__attribute__((used)) static void
pmcstat_get_cpumask(const char *cpuspec, cpuset_t *cpumask)
{
 int cpu;
 const char *s;
 char *end;

 CPU_ZERO(cpumask);
 s = cpuspec;

 do {
  cpu = strtol(s, &end, 0);
  if (cpu < 0 || end == s)
   errx(EX_USAGE,
       "ERROR: Illegal CPU specification \"%s\".",
       cpuspec);
  CPU_SET(cpu, cpumask);
  s = end + strspn(end, ", \t");
 } while (*s);
 assert(!CPU_EMPTY(cpumask));
}
