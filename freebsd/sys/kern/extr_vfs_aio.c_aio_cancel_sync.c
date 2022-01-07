
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kaioinfo {int kaio_syncqueue; } ;
struct kaiocb {TYPE_1__* userproc; } ;
struct TYPE_2__ {struct kaioinfo* p_aioinfo; } ;


 int AIO_LOCK (struct kaioinfo*) ;
 int AIO_UNLOCK (struct kaioinfo*) ;
 int TAILQ_REMOVE (int *,struct kaiocb*,int ) ;
 int aio_cancel (struct kaiocb*) ;
 int aio_cancel_cleared (struct kaiocb*) ;
 int list ;

__attribute__((used)) static void
aio_cancel_sync(struct kaiocb *job)
{
 struct kaioinfo *ki;

 ki = job->userproc->p_aioinfo;
 AIO_LOCK(ki);
 if (!aio_cancel_cleared(job))
  TAILQ_REMOVE(&ki->kaio_syncqueue, job, list);
 AIO_UNLOCK(ki);
 aio_cancel(job);
}
