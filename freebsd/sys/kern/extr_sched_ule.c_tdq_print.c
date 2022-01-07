
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tdq {char* tdq_name; int tdq_load; int tdq_switchcnt; int tdq_oldswitchcnt; int tdq_idx; int tdq_ridx; int tdq_transferable; int tdq_lowpri; int tdq_idle; int tdq_timeshare; int tdq_realtime; } ;


 struct tdq* TDQ_CPU (int) ;
 int TDQ_ID (struct tdq*) ;
 int TDQ_LOCKPTR (struct tdq*) ;
 int printf (char*,...) ;
 int runq_print (int *) ;

void
tdq_print(int cpu)
{
 struct tdq *tdq;

 tdq = TDQ_CPU(cpu);

 printf("tdq %d:\n", TDQ_ID(tdq));
 printf("\tlock            %p\n", TDQ_LOCKPTR(tdq));
 printf("\tLock name:      %s\n", tdq->tdq_name);
 printf("\tload:           %d\n", tdq->tdq_load);
 printf("\tswitch cnt:     %d\n", tdq->tdq_switchcnt);
 printf("\told switch cnt: %d\n", tdq->tdq_oldswitchcnt);
 printf("\ttimeshare idx:  %d\n", tdq->tdq_idx);
 printf("\ttimeshare ridx: %d\n", tdq->tdq_ridx);
 printf("\tload transferable: %d\n", tdq->tdq_transferable);
 printf("\tlowest priority:   %d\n", tdq->tdq_lowpri);
 printf("\trealtime runq:\n");
 runq_print(&tdq->tdq_realtime);
 printf("\ttimeshare runq:\n");
 runq_print(&tdq->tdq_timeshare);
 printf("\tidle runq:\n");
 runq_print(&tdq->tdq_idle);
}
