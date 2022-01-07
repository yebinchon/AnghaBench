
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kaiocb {int userproc; int * handle_fn; } ;
typedef int aio_handle_fn_t ;


 int TAILQ_INSERT_TAIL (int *,struct kaiocb*,int ) ;
 int aio_cancel (struct kaiocb*) ;
 int aio_cancel_daemon_job ;
 int aio_job_mtx ;
 int aio_jobs ;
 int aio_kick_nowait (int ) ;
 int aio_set_cancel_function (struct kaiocb*,int ) ;
 int list ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
aio_schedule(struct kaiocb *job, aio_handle_fn_t *func)
{

 mtx_lock(&aio_job_mtx);
 if (!aio_set_cancel_function(job, aio_cancel_daemon_job)) {
  mtx_unlock(&aio_job_mtx);
  aio_cancel(job);
  return;
 }
 job->handle_fn = func;
 TAILQ_INSERT_TAIL(&aio_jobs, job, list);
 aio_kick_nowait(job->userproc);
 mtx_unlock(&aio_job_mtx);
}
