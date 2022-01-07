
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct proc {struct kaioinfo* p_aioinfo; } ;
struct kaioinfo {int kaio_jobqueue; } ;
struct TYPE_3__ {int error; long status; } ;
struct TYPE_4__ {TYPE_1__ _aiocb_private; } ;
struct kaiocb {int jobflags; struct proc* userproc; TYPE_2__ uaiocb; } ;


 int AIO_LOCK (struct kaioinfo*) ;
 int AIO_UNLOCK (struct kaioinfo*) ;
 int KAIOCB_CANCELLING ;
 int KAIOCB_FINISHED ;
 int KAIOCB_QUEUEING ;
 int KASSERT (int,char*) ;
 int TAILQ_REMOVE (int *,struct kaiocb*,int ) ;
 int aio_bio_done_notify (struct proc*,struct kaiocb*) ;
 int plist ;

void
aio_complete(struct kaiocb *job, long status, int error)
{
 struct kaioinfo *ki;
 struct proc *userp;

 job->uaiocb._aiocb_private.error = error;
 job->uaiocb._aiocb_private.status = status;

 userp = job->userproc;
 ki = userp->p_aioinfo;

 AIO_LOCK(ki);
 KASSERT(!(job->jobflags & KAIOCB_FINISHED),
     ("duplicate aio_complete"));
 job->jobflags |= KAIOCB_FINISHED;
 if ((job->jobflags & (KAIOCB_QUEUEING | KAIOCB_CANCELLING)) == 0) {
  TAILQ_REMOVE(&ki->kaio_jobqueue, job, plist);
  aio_bio_done_notify(userp, job);
 }
 AIO_UNLOCK(ki);
}
