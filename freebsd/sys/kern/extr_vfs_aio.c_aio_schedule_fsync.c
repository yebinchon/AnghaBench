
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kaioinfo {int kaio_syncready; } ;
struct kaiocb {int dummy; } ;


 int AIO_LOCK (struct kaioinfo*) ;
 int AIO_UNLOCK (struct kaioinfo*) ;
 int TAILQ_EMPTY (int *) ;
 struct kaiocb* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct kaiocb*,int ) ;
 int aio_process_sync ;
 int aio_schedule (struct kaiocb*,int ) ;
 int list ;

__attribute__((used)) static void
aio_schedule_fsync(void *context, int pending)
{
 struct kaioinfo *ki;
 struct kaiocb *job;

 ki = context;
 AIO_LOCK(ki);
 while (!TAILQ_EMPTY(&ki->kaio_syncready)) {
  job = TAILQ_FIRST(&ki->kaio_syncready);
  TAILQ_REMOVE(&ki->kaio_syncready, job, list);
  AIO_UNLOCK(ki);
  aio_schedule(job, aio_process_sync);
  AIO_LOCK(ki);
 }
 AIO_UNLOCK(ki);
}
