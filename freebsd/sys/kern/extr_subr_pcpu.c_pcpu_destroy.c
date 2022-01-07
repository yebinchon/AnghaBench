
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu {size_t pc_cpuid; } ;


 int STAILQ_REMOVE (int *,struct pcpu*,struct pcpu*,int ) ;
 int cpuhead ;
 int ** cpuid_to_pcpu ;
 scalar_t__* dpcpu_off ;
 int pc_allcpu ;

void
pcpu_destroy(struct pcpu *pcpu)
{

 STAILQ_REMOVE(&cpuhead, pcpu, pcpu, pc_allcpu);
 cpuid_to_pcpu[pcpu->pc_cpuid] = ((void*)0);
 dpcpu_off[pcpu->pc_cpuid] = 0;
}
