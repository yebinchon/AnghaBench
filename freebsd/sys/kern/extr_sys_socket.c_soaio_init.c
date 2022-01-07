
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AIOD_LIFETIME_DEFAULT ;
 int INT_MAX ;
 int MTX_DEF ;
 int STAILQ_INIT (int *) ;
 int TASK_INIT (int *,int ,int ,int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int new_unrhdr (int,int ,int *) ;
 int soaio_jobs ;
 int soaio_jobs_lock ;
 int soaio_kproc_create ;
 int soaio_kproc_task ;
 int soaio_kproc_unr ;
 int soaio_lifetime ;
 scalar_t__ soaio_target_procs ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static void
soaio_init(void)
{

 soaio_lifetime = AIOD_LIFETIME_DEFAULT;
 STAILQ_INIT(&soaio_jobs);
 mtx_init(&soaio_jobs_lock, "soaio jobs", ((void*)0), MTX_DEF);
 soaio_kproc_unr = new_unrhdr(1, INT_MAX, ((void*)0));
 TASK_INIT(&soaio_kproc_task, 0, soaio_kproc_create, ((void*)0));
 if (soaio_target_procs > 0)
  taskqueue_enqueue(taskqueue_thread, &soaio_kproc_task);
}
