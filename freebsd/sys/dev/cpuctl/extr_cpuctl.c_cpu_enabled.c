
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pmc_cpu_is_disabled (int) ;

__attribute__((used)) static int
cpu_enabled(int cpu)
{

 return (pmc_cpu_is_disabled(cpu) == 0);
}
