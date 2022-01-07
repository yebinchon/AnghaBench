
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int cpuset_t ;


 int PCPU_GET (int ) ;
 int cpuid ;

u_int
intr_irq_next_cpu(u_int current_cpu, cpuset_t *cpumask)
{

 return (PCPU_GET(cpuid));
}
