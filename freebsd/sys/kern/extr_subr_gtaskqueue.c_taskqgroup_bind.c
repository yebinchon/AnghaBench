
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct taskqgroup {int tqg_cnt; TYPE_1__* tqg_queue; } ;
struct taskq_bind_task {int bt_task; int bt_cpuid; } ;
struct TYPE_2__ {int tgc_taskq; int tgc_cpu; } ;


 int GTASK_INIT (int *,int ,int ,int ,struct taskq_bind_task*) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int grouptaskqueue_enqueue (int ,int *) ;
 struct taskq_bind_task* malloc (int,int ,int ) ;
 int taskqgroup_binder ;

__attribute__((used)) static void
taskqgroup_bind(struct taskqgroup *qgroup)
{
 struct taskq_bind_task *gtask;
 int i;





 if (qgroup->tqg_cnt == 1)
  return;

 for (i = 0; i < qgroup->tqg_cnt; i++) {
  gtask = malloc(sizeof (*gtask), M_DEVBUF, M_WAITOK);
  GTASK_INIT(&gtask->bt_task, 0, 0, taskqgroup_binder, gtask);
  gtask->bt_cpuid = qgroup->tqg_queue[i].tgc_cpu;
  grouptaskqueue_enqueue(qgroup->tqg_queue[i].tgc_taskq,
      &gtask->bt_task);
 }
}
