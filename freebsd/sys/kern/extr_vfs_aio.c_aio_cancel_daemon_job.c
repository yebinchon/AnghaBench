
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kaiocb {int dummy; } ;


 int TAILQ_REMOVE (int *,struct kaiocb*,int ) ;
 int aio_cancel (struct kaiocb*) ;
 int aio_cancel_cleared (struct kaiocb*) ;
 int aio_job_mtx ;
 int aio_jobs ;
 int list ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
aio_cancel_daemon_job(struct kaiocb *job)
{

 mtx_lock(&aio_job_mtx);
 if (!aio_cancel_cleared(job))
  TAILQ_REMOVE(&aio_jobs, job, list);
 mtx_unlock(&aio_job_mtx);
 aio_cancel(job);
}
