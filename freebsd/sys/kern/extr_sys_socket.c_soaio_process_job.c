
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uio {int uio_iovcnt; size_t uio_resid; int uio_rw; struct thread* uio_td; int uio_segflg; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct ucred {int dummy; } ;
struct TYPE_3__ {long ru_msgrcv; long ru_msgsnd; } ;
struct thread {struct ucred* td_ucred; TYPE_1__ td_ru; } ;
struct sockbuf {int sb_aiojobq; } ;
struct socket {int so_options; int so_state; struct sockbuf so_rcv; } ;
struct TYPE_4__ {size_t aio_nbytes; scalar_t__ aio_buf; } ;
struct kaiocb {size_t aio_done; int msgrcv; int msgsnd; TYPE_2__ uaiocb; int userproc; struct ucred* cred; struct file* fd_file; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
struct file {int f_cred; } ;


 int EINTR ;
 int EPIPE ;
 int ERESTART ;
 int EWOULDBLOCK ;
 int MPASS (int) ;
 int MSG_MORETOCOME ;
 int MSG_NBIO ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int SIGPIPE ;
 int SOCKBUF_LOCK (struct sockbuf*) ;
 int SOCKBUF_UNLOCK (struct sockbuf*) ;
 int SO_NOSIGPIPE ;
 int SS_NBIO ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct kaiocb*,int ) ;
 int UIO_READ ;
 int UIO_USERSPACE ;
 int UIO_WRITE ;
 int aio_cancel (struct kaiocb*) ;
 int aio_complete (struct kaiocb*,size_t,int) ;
 int aio_set_cancel_function (struct kaiocb*,int ) ;
 int aio_switch_vmspace (struct kaiocb*) ;
 struct thread* curthread ;
 int empty_results ;
 int empty_retries ;
 int kern_psignal (int ,int ) ;
 int list ;
 int mac_socket_check_receive (int ,struct socket*) ;
 int mac_socket_check_send (int ,struct socket*) ;
 scalar_t__ soaio_ready (struct socket*,struct sockbuf*) ;
 int soo_aio_cancel ;
 int soreceive (struct socket*,int *,struct uio*,int *,int *,int*) ;
 int sosend (struct socket*,int *,struct uio*,int *,int *,int,struct thread*) ;

__attribute__((used)) static void
soaio_process_job(struct socket *so, struct sockbuf *sb, struct kaiocb *job)
{
 struct ucred *td_savedcred;
 struct thread *td;
 struct file *fp;
 struct uio uio;
 struct iovec iov;
 size_t cnt, done;
 long ru_before;
 int error, flags;

 SOCKBUF_UNLOCK(sb);
 aio_switch_vmspace(job);
 td = curthread;
 fp = job->fd_file;
retry:
 td_savedcred = td->td_ucred;
 td->td_ucred = job->cred;

 done = job->aio_done;
 cnt = job->uaiocb.aio_nbytes - done;
 iov.iov_base = (void *)((uintptr_t)job->uaiocb.aio_buf + done);
 iov.iov_len = cnt;
 uio.uio_iov = &iov;
 uio.uio_iovcnt = 1;
 uio.uio_offset = 0;
 uio.uio_resid = cnt;
 uio.uio_segflg = UIO_USERSPACE;
 uio.uio_td = td;
 flags = MSG_NBIO;







 if (sb == &so->so_rcv) {
  uio.uio_rw = UIO_READ;
  ru_before = td->td_ru.ru_msgrcv;





   error = soreceive(so, ((void*)0), &uio, ((void*)0), ((void*)0), &flags);
  if (td->td_ru.ru_msgrcv != ru_before)
   job->msgrcv = 1;
 } else {
  if (!TAILQ_EMPTY(&sb->sb_aiojobq))
   flags |= MSG_MORETOCOME;
  uio.uio_rw = UIO_WRITE;
  ru_before = td->td_ru.ru_msgsnd;




   error = sosend(so, ((void*)0), &uio, ((void*)0), ((void*)0), flags, td);
  if (td->td_ru.ru_msgsnd != ru_before)
   job->msgsnd = 1;
  if (error == EPIPE && (so->so_options & SO_NOSIGPIPE) == 0) {
   PROC_LOCK(job->userproc);
   kern_psignal(job->userproc, SIGPIPE);
   PROC_UNLOCK(job->userproc);
  }
 }

 done += cnt - uio.uio_resid;
 job->aio_done = done;
 td->td_ucred = td_savedcred;

 if (error == EWOULDBLOCK) {
  MPASS(done != job->uaiocb.aio_nbytes);
  SOCKBUF_LOCK(sb);
  if (done == 0 || !(so->so_state & SS_NBIO)) {
   empty_results++;
   if (soaio_ready(so, sb)) {
    empty_retries++;
    SOCKBUF_UNLOCK(sb);
    goto retry;
   }

   if (!aio_set_cancel_function(job, soo_aio_cancel)) {
    SOCKBUF_UNLOCK(sb);
    if (done != 0)
     aio_complete(job, done, 0);
    else
     aio_cancel(job);
    SOCKBUF_LOCK(sb);
   } else {
    TAILQ_INSERT_HEAD(&sb->sb_aiojobq, job, list);
   }
   return;
  }
  SOCKBUF_UNLOCK(sb);
 }
 if (done != 0 && (error == ERESTART || error == EINTR ||
     error == EWOULDBLOCK))
  error = 0;
 if (error)
  aio_complete(job, -1, error);
 else
  aio_complete(job, done, 0);
 SOCKBUF_LOCK(sb);
}
