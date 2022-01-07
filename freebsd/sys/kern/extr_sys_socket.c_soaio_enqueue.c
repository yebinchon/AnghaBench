
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {scalar_t__ ta_pending; } ;


 int MPASS (int) ;
 int STAILQ_INSERT_TAIL (int *,struct task*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ soaio_idle ;
 int soaio_jobs ;
 int soaio_jobs_lock ;
 int soaio_kproc_task ;
 scalar_t__ soaio_max_procs ;
 scalar_t__ soaio_num_procs ;
 scalar_t__ soaio_queued ;
 int ta_link ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;
 int wakeup_one (scalar_t__*) ;

void
soaio_enqueue(struct task *task)
{

 mtx_lock(&soaio_jobs_lock);
 MPASS(task->ta_pending == 0);
 task->ta_pending++;
 STAILQ_INSERT_TAIL(&soaio_jobs, task, ta_link);
 soaio_queued++;
 if (soaio_queued <= soaio_idle)
  wakeup_one(&soaio_idle);
 else if (soaio_num_procs < soaio_max_procs)
  taskqueue_enqueue(taskqueue_thread, &soaio_kproc_task);
 mtx_unlock(&soaio_jobs_lock);
}
