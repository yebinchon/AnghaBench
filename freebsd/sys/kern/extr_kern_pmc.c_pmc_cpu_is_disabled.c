
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pmc_cpu_is_active (int) ;

int
pmc_cpu_is_disabled(int cpu)
{
 return (!pmc_cpu_is_active(cpu));
}
