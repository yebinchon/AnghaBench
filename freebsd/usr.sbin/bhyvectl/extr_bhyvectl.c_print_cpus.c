
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuset_t ;


 int CPU_EMPTY (int const*) ;
 scalar_t__ CPU_ISSET (int,int const*) ;
 int CPU_SETSIZE ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_cpus(const char *banner, const cpuset_t *cpus)
{
 int i, first;

 first = 1;
 printf("%s:\t", banner);
 if (!CPU_EMPTY(cpus)) {
  for (i = 0; i < CPU_SETSIZE; i++) {
   if (CPU_ISSET(i, cpus)) {
    printf("%s%d", first ? " " : ", ", i);
    first = 0;
   }
  }
 } else
  printf(" (none)");
 printf("\n");
}
