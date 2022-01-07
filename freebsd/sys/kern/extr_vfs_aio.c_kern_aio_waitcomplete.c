
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
struct TYPE_6__ {int ru_msgrcv; int ru_msgsnd; int ru_inblock; int ru_oublock; } ;
struct thread {long* td_retval; TYPE_3__ td_ru; struct proc* td_proc; } ;
struct proc {struct kaioinfo* p_aioinfo; } ;
struct kaioinfo {int kaio_flags; int kaio_done; } ;
struct TYPE_4__ {long status; long error; } ;
struct TYPE_5__ {TYPE_1__ _aiocb_private; } ;
struct kaiocb {int jobflags; scalar_t__ msgrcv; scalar_t__ msgsnd; scalar_t__ inblock; scalar_t__ outblock; TYPE_2__ uaiocb; struct aiocb* ujob; } ;
struct aiocb_ops {int (* store_status ) (struct aiocb*,long) ;int (* store_error ) (struct aiocb*,long) ;int (* store_aiocb ) (struct aiocb**,struct aiocb*) ;} ;
struct aiocb {int dummy; } ;


 int AIO_LOCK (struct kaioinfo*) ;
 int AIO_MTX (struct kaioinfo*) ;
 int AIO_UNLOCK (struct kaioinfo*) ;
 long EINTR ;
 int EINVAL ;
 long ERESTART ;
 long EWOULDBLOCK ;
 int KAIOCB_FINISHED ;
 int KAIO_WAKEUP ;
 int MPASS (int) ;
 int PCATCH ;
 int PRIBIO ;
 struct kaiocb* TAILQ_FIRST (int *) ;
 int TIMESPEC_TO_TIMEVAL (struct timeval*,struct timespec*) ;
 int aio_free_entry (struct kaiocb*) ;
 int aio_init_aioinfo (struct proc*) ;
 scalar_t__ itimerfix (struct timeval*) ;
 long msleep (struct kaioinfo**,int ,int,char*,int) ;
 int stub1 (struct aiocb**,struct aiocb*) ;
 int stub2 (struct aiocb**,struct aiocb*) ;
 int stub3 (struct aiocb*,long) ;
 int stub4 (struct aiocb*,long) ;
 int tvtohz (struct timeval*) ;

__attribute__((used)) static int
kern_aio_waitcomplete(struct thread *td, struct aiocb **ujobp,
    struct timespec *ts, struct aiocb_ops *ops)
{
 struct proc *p = td->td_proc;
 struct timeval atv;
 struct kaioinfo *ki;
 struct kaiocb *job;
 struct aiocb *ujob;
 long error, status;
 int timo;

 ops->store_aiocb(ujobp, ((void*)0));

 if (ts == ((void*)0)) {
  timo = 0;
 } else if (ts->tv_sec == 0 && ts->tv_nsec == 0) {
  timo = -1;
 } else {
  if ((ts->tv_nsec < 0) || (ts->tv_nsec >= 1000000000))
   return (EINVAL);

  TIMESPEC_TO_TIMEVAL(&atv, ts);
  if (itimerfix(&atv))
   return (EINVAL);
  timo = tvtohz(&atv);
 }

 if (p->p_aioinfo == ((void*)0))
  aio_init_aioinfo(p);
 ki = p->p_aioinfo;

 error = 0;
 job = ((void*)0);
 AIO_LOCK(ki);
 while ((job = TAILQ_FIRST(&ki->kaio_done)) == ((void*)0)) {
  if (timo == -1) {
   error = EWOULDBLOCK;
   break;
  }
  ki->kaio_flags |= KAIO_WAKEUP;
  error = msleep(&p->p_aioinfo, AIO_MTX(ki), PRIBIO | PCATCH,
      "aiowc", timo);
  if (timo && error == ERESTART)
   error = EINTR;
  if (error)
   break;
 }

 if (job != ((void*)0)) {
  MPASS(job->jobflags & KAIOCB_FINISHED);
  ujob = job->ujob;
  status = job->uaiocb._aiocb_private.status;
  error = job->uaiocb._aiocb_private.error;
  td->td_retval[0] = status;
  td->td_ru.ru_oublock += job->outblock;
  td->td_ru.ru_inblock += job->inblock;
  td->td_ru.ru_msgsnd += job->msgsnd;
  td->td_ru.ru_msgrcv += job->msgrcv;
  aio_free_entry(job);
  AIO_UNLOCK(ki);
  ops->store_aiocb(ujobp, ujob);
  ops->store_error(ujob, error);
  ops->store_status(ujob, status);
 } else
  AIO_UNLOCK(ki);

 return (error);
}
