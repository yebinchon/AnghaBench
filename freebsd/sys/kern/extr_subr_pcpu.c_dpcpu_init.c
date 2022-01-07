
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu {scalar_t__ pc_dynamic; } ;


 int DPCPU_BYTES ;
 scalar_t__ DPCPU_START ;
 scalar_t__* dpcpu_off ;
 int memcpy (void*,void*,int ) ;
 struct pcpu* pcpu_find (int) ;

void
dpcpu_init(void *dpcpu, int cpuid)
{
 struct pcpu *pcpu;

 pcpu = pcpu_find(cpuid);
 pcpu->pc_dynamic = (uintptr_t)dpcpu - DPCPU_START;




 memcpy(dpcpu, (void *)DPCPU_START, DPCPU_BYTES);




 dpcpu_off[cpuid] = pcpu->pc_dynamic;
}
