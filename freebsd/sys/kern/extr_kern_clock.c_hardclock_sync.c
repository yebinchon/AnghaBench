
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ABSENT (int) ;
 int* DPCPU_ID_PTR (int,int ) ;
 int KASSERT (int,char*) ;
 int pcputicks ;
 int ticks ;

void
hardclock_sync(int cpu)
{
 int *t;
 KASSERT(!CPU_ABSENT(cpu), ("Absent CPU %d", cpu));
 t = DPCPU_ID_PTR(cpu, pcputicks);

 *t = ticks;
}
