
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
typedef int cpuset_t ;


 int CPU_CLR (int ,int *) ;
 int CPU_FFS (int *) ;
 int spitfire_ipi_single (int ,int ,int ,int ) ;

__attribute__((used)) static void
spitfire_ipi_selected(cpuset_t cpus, u_long d0, u_long d1, u_long d2)
{
 u_int cpu;

 while ((cpu = CPU_FFS(&cpus)) != 0) {
  cpu--;
  CPU_CLR(cpu, &cpus);
  spitfire_ipi_single(cpu, d0, d1, d2);
 }
}
