
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuset_t ;


 int CPU_CLR (int ,int *) ;
 int PCPU_GET (int ) ;
 int all_cpus ;
 int cpuid ;
 int ipi_selected (int ,int) ;

void
ipi_all_but_self(int ipi)
{
 cpuset_t other_cpus;

 other_cpus = all_cpus;
 CPU_CLR(PCPU_GET(cpuid), &other_cpus);
 ipi_selected(other_cpus, ipi);
}
