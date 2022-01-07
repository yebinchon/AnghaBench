
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PCPU_GET (int ) ;
 int cpuid ;
 int runq ;
 int runq_check (int *) ;
 int * runq_pcpu ;

int
sched_runnable(void)
{



 return runq_check(&runq);

}
