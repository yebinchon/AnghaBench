
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskqgroup_cpu {int tgc_cpu; int tgc_taskq; int tgc_tasks; } ;
struct taskqgroup {int tqg_name; struct taskqgroup_cpu* tqg_queue; } ;


 int LIST_INIT (int *) ;
 int M_WAITOK ;
 int PI_SOFT ;
 int gtaskqueue_create_fast (int *,int ,int ,int *) ;
 int gtaskqueue_start_threads (int *,int,int ,char*,int ,int) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static void
taskqgroup_cpu_create(struct taskqgroup *qgroup, int idx, int cpu)
{
 struct taskqgroup_cpu *qcpu;

 qcpu = &qgroup->tqg_queue[idx];
 LIST_INIT(&qcpu->tgc_tasks);
 qcpu->tgc_taskq = gtaskqueue_create_fast(((void*)0), M_WAITOK,
     taskqueue_thread_enqueue, &qcpu->tgc_taskq);
 gtaskqueue_start_threads(&qcpu->tgc_taskq, 1, PI_SOFT,
     "%s_%d", qgroup->tqg_name, idx);
 qcpu->tgc_cpu = cpu;
}
