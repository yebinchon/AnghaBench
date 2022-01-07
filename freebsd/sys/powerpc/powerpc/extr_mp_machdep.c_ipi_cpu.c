
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int * cpuid_to_pcpu ;
 int ipi_send (int ,int ) ;

void
ipi_cpu(int cpu, u_int ipi)
{

 ipi_send(cpuid_to_pcpu[cpu], ipi);
}
