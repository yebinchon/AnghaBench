
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tdq {int tdq_id; int tdq_loadname; int tdq_name; int tdq_lock; int tdq_idle; int tdq_timeshare; int tdq_realtime; } ;


 int MTX_RECURSE ;
 int MTX_SPIN ;
 scalar_t__ TDQ_ID (struct tdq*) ;
 scalar_t__ bootverbose ;
 int mtx_init (int *,int ,char*,int) ;
 int printf (char*,int) ;
 int runq_init (int *) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static void
tdq_setup(struct tdq *tdq, int id)
{

 if (bootverbose)
  printf("ULE: setup cpu %d\n", id);
 runq_init(&tdq->tdq_realtime);
 runq_init(&tdq->tdq_timeshare);
 runq_init(&tdq->tdq_idle);
 tdq->tdq_id = id;
 snprintf(tdq->tdq_name, sizeof(tdq->tdq_name),
     "sched lock %d", (int)TDQ_ID(tdq));
 mtx_init(&tdq->tdq_lock, tdq->tdq_name, "sched lock",
     MTX_SPIN | MTX_RECURSE);




}
