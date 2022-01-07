
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_short ;
struct thread {int td_ucred; struct proc* td_proc; } ;
struct proc {struct kaioinfo* p_aioinfo; } ;
struct kevent {uintptr_t ident; int flags; intptr_t data; int udata; int filter; } ;
struct kaioinfo {scalar_t__ kaio_count; int kaio_jobqueue; int kaio_all; } ;
struct TYPE_8__ {int error; void* kernelinfo; } ;
struct TYPE_7__ {int sival_ptr; } ;
struct TYPE_10__ {scalar_t__ sigev_notify; int sigev_notify_kevent_flags; int sigev_notify_kqueue; TYPE_1__ sigev_value; int sigev_signo; } ;
struct TYPE_12__ {scalar_t__ aio_nbytes; int aio_lio_opcode; int aio_fildes; scalar_t__ aio_offset; TYPE_2__ _aiocb_private; TYPE_4__ aio_sigevent; } ;
struct kaiocb {int jobflags; int klist; struct aioliojob* lio; int cred; struct proc* userproc; TYPE_6__ uaiocb; struct aiocb* ujob; scalar_t__ seqno; struct file* fd_file; int ksi; } ;
struct file {TYPE_3__* f_ops; TYPE_5__* f_vnode; } ;
struct aioliojob {int lioj_count; } ;
struct aiocb_ops {int (* store_kernelinfo ) (struct aiocb*,int) ;int (* copyin ) (struct aiocb*,TYPE_6__*) ;int (* store_error ) (struct aiocb*,int) ;int (* store_status ) (struct aiocb*,int) ;} ;
struct aiocb {int dummy; } ;
typedef int kev ;
struct TYPE_11__ {scalar_t__ v_type; } ;
struct TYPE_9__ {int * fo_aio_queue; } ;


 int AIO_LOCK (struct kaioinfo*) ;
 int AIO_MTX (struct kaioinfo*) ;
 int AIO_UNLOCK (struct kaioinfo*) ;
 int EAGAIN ;
 int EINPROGRESS ;
 int EINVAL ;
 int EVFILT_AIO ;
 int EV_ADD ;
 int EV_CLEAR ;
 int EV_DISPATCH ;
 int EV_ENABLE ;
 int EV_FLAG1 ;
 int EV_ONESHOT ;
 scalar_t__ IOSIZE_MAX ;
 int KAIOCB_FINISHED ;
 int KAIOCB_QUEUEING ;





 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ SIGEV_KEVENT ;
 scalar_t__ SIGEV_NONE ;
 scalar_t__ SIGEV_SIGNAL ;
 scalar_t__ SIGEV_THREAD_ID ;
 int TAILQ_INSERT_TAIL (int *,struct kaiocb*,int ) ;
 scalar_t__ VCHR ;
 int _SIG_VALID (int ) ;
 int aio_bio_done_notify (struct proc*,struct kaiocb*) ;
 int aio_init_aioinfo (struct proc*) ;
 int aio_job_mtx ;
 int aio_process_mlock ;
 int aio_queue_file (struct file*,struct kaiocb*) ;
 int aio_schedule (struct kaiocb*,int ) ;
 int aiocb_zone ;
 int allist ;
 int atomic_add_int (scalar_t__*,int) ;
 int cap_fsync_rights ;
 int cap_no_rights ;
 int cap_pread_rights ;
 int cap_pwrite_rights ;
 int crhold (int ) ;
 int curthread ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int,int *,struct file**) ;
 int fget_read (struct thread*,int,int *,struct file**) ;
 int fget_write (struct thread*,int,int *,struct file**) ;
 int fo_aio_queue (struct file*,struct kaiocb*) ;
 int jobrefid ;
 int jobseqno ;
 int knlist_delete (int *,int ,int ) ;
 int knlist_init_mtx (int *,int ) ;
 int kqfd_register (int,struct kevent*,struct thread*,int) ;
 int ksiginfo_init (int *) ;
 scalar_t__ max_aio_queue_per_proc ;
 scalar_t__ max_queue_count ;
 int memset (struct kevent*,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ num_queue_count ;
 int plist ;
 int stub1 (struct aiocb*,int) ;
 int stub10 (struct aiocb*,int) ;
 int stub11 (struct aiocb*,int) ;
 int stub2 (struct aiocb*,int) ;
 int stub3 (struct aiocb*,int) ;
 int stub4 (struct aiocb*,int) ;
 int stub5 (struct aiocb*,TYPE_6__*) ;
 int stub6 (struct aiocb*,int) ;
 int stub7 (struct aiocb*,int) ;
 int stub8 (struct aiocb*,int) ;
 int stub9 (struct aiocb*,int) ;
 struct kaiocb* uma_zalloc (int ,int) ;
 int uma_zfree (int ,struct kaiocb*) ;

int
aio_aqueue(struct thread *td, struct aiocb *ujob, struct aioliojob *lj,
    int type, struct aiocb_ops *ops)
{
 struct proc *p = td->td_proc;
 struct file *fp;
 struct kaiocb *job;
 struct kaioinfo *ki;
 struct kevent kev;
 int opcode;
 int error;
 int fd, kqfd;
 int jid;
 u_short evflags;

 if (p->p_aioinfo == ((void*)0))
  aio_init_aioinfo(p);

 ki = p->p_aioinfo;

 ops->store_status(ujob, -1);
 ops->store_error(ujob, 0);
 ops->store_kernelinfo(ujob, -1);

 if (num_queue_count >= max_queue_count ||
     ki->kaio_count >= max_aio_queue_per_proc) {
  ops->store_error(ujob, EAGAIN);
  return (EAGAIN);
 }

 job = uma_zalloc(aiocb_zone, M_WAITOK | M_ZERO);
 knlist_init_mtx(&job->klist, AIO_MTX(ki));

 error = ops->copyin(ujob, &job->uaiocb);
 if (error) {
  ops->store_error(ujob, error);
  uma_zfree(aiocb_zone, job);
  return (error);
 }

 if (job->uaiocb.aio_nbytes > IOSIZE_MAX) {
  uma_zfree(aiocb_zone, job);
  return (EINVAL);
 }

 if (job->uaiocb.aio_sigevent.sigev_notify != SIGEV_KEVENT &&
     job->uaiocb.aio_sigevent.sigev_notify != SIGEV_SIGNAL &&
     job->uaiocb.aio_sigevent.sigev_notify != SIGEV_THREAD_ID &&
     job->uaiocb.aio_sigevent.sigev_notify != SIGEV_NONE) {
  ops->store_error(ujob, EINVAL);
  uma_zfree(aiocb_zone, job);
  return (EINVAL);
 }

 if ((job->uaiocb.aio_sigevent.sigev_notify == SIGEV_SIGNAL ||
      job->uaiocb.aio_sigevent.sigev_notify == SIGEV_THREAD_ID) &&
  !_SIG_VALID(job->uaiocb.aio_sigevent.sigev_signo)) {
  uma_zfree(aiocb_zone, job);
  return (EINVAL);
 }

 ksiginfo_init(&job->ksi);


 job->ujob = ujob;


 if (type != 131)
  job->uaiocb.aio_lio_opcode = type;
 opcode = job->uaiocb.aio_lio_opcode;
 fd = job->uaiocb.aio_fildes;
 switch (opcode) {
 case 128:
  error = fget_write(td, fd, &cap_pwrite_rights, &fp);
  break;
 case 130:
  error = fget_read(td, fd, &cap_pread_rights, &fp);
  break;
 case 129:
  error = fget(td, fd, &cap_fsync_rights, &fp);
  break;
 case 132:
  fp = ((void*)0);
  break;
 case 131:
  error = fget(td, fd, &cap_no_rights, &fp);
  break;
 default:
  error = EINVAL;
 }
 if (error) {
  uma_zfree(aiocb_zone, job);
  ops->store_error(ujob, error);
  return (error);
 }

 if (opcode == 129 && fp->f_vnode == ((void*)0)) {
  error = EINVAL;
  goto aqueue_fail;
 }

 if ((opcode == 130 || opcode == 128) &&
     job->uaiocb.aio_offset < 0 &&
     (fp->f_vnode == ((void*)0) || fp->f_vnode->v_type != VCHR)) {
  error = EINVAL;
  goto aqueue_fail;
 }

 job->fd_file = fp;

 mtx_lock(&aio_job_mtx);
 jid = jobrefid++;
 job->seqno = jobseqno++;
 mtx_unlock(&aio_job_mtx);
 error = ops->store_kernelinfo(ujob, jid);
 if (error) {
  error = EINVAL;
  goto aqueue_fail;
 }
 job->uaiocb._aiocb_private.kernelinfo = (void *)(intptr_t)jid;

 if (opcode == 131) {
  fdrop(fp, td);
  uma_zfree(aiocb_zone, job);
  return (0);
 }

 if (job->uaiocb.aio_sigevent.sigev_notify != SIGEV_KEVENT)
  goto no_kqueue;
 evflags = job->uaiocb.aio_sigevent.sigev_notify_kevent_flags;
 if ((evflags & ~(EV_CLEAR | EV_DISPATCH | EV_ONESHOT)) != 0) {
  error = EINVAL;
  goto aqueue_fail;
 }
 kqfd = job->uaiocb.aio_sigevent.sigev_notify_kqueue;
 memset(&kev, 0, sizeof(kev));
 kev.ident = (uintptr_t)job->ujob;
 kev.filter = EVFILT_AIO;
 kev.flags = EV_ADD | EV_ENABLE | EV_FLAG1 | evflags;
 kev.data = (intptr_t)job;
 kev.udata = job->uaiocb.aio_sigevent.sigev_value.sival_ptr;
 error = kqfd_register(kqfd, &kev, td, M_WAITOK);
 if (error)
  goto aqueue_fail;

no_kqueue:

 ops->store_error(ujob, EINPROGRESS);
 job->uaiocb._aiocb_private.error = EINPROGRESS;
 job->userproc = p;
 job->cred = crhold(td->td_ucred);
 job->jobflags = KAIOCB_QUEUEING;
 job->lio = lj;

 if (opcode == 132) {
  aio_schedule(job, aio_process_mlock);
  error = 0;
 } else if (fp->f_ops->fo_aio_queue == ((void*)0))
  error = aio_queue_file(fp, job);
 else
  error = fo_aio_queue(fp, job);
 if (error)
  goto aqueue_fail;

 AIO_LOCK(ki);
 job->jobflags &= ~KAIOCB_QUEUEING;
 TAILQ_INSERT_TAIL(&ki->kaio_all, job, allist);
 ki->kaio_count++;
 if (lj)
  lj->lioj_count++;
 atomic_add_int(&num_queue_count, 1);
 if (job->jobflags & KAIOCB_FINISHED) {





  aio_bio_done_notify(p, job);
 } else
  TAILQ_INSERT_TAIL(&ki->kaio_jobqueue, job, plist);
 AIO_UNLOCK(ki);
 return (0);

aqueue_fail:
 knlist_delete(&job->klist, curthread, 0);
 if (fp)
  fdrop(fp, td);
 uma_zfree(aiocb_zone, job);
 ops->store_error(ujob, error);
 return (error);
}
