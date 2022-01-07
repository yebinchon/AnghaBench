
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uio {int uio_resid; scalar_t__ uio_segflg; TYPE_1__* uio_iov; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_6__ {int size; int cnt; int in; int * buffer; } ;
struct TYPE_5__ {scalar_t__ cnt; } ;
struct pipe {scalar_t__ pipe_present; int pipe_state; scalar_t__ pipe_busy; TYPE_3__ pipe_buffer; int pipe_mtime; TYPE_2__ pipe_map; int pipe_pair; } ;
struct file {int f_flag; struct pipe* f_data; } ;
typedef int ssize_t ;
struct TYPE_4__ {int iov_len; } ;


 int BIG_PIPE_SIZE ;
 int EAGAIN ;
 int ENOMEM ;
 int EPIPE ;
 int FNONBLOCK ;
 int KASSERT (int,char*) ;
 int PCATCH ;
 scalar_t__ PIPE_ACTIVE ;
 int PIPE_BUF ;
 int PIPE_DIRECTW ;
 int PIPE_EOF ;
 int PIPE_LOCK (struct pipe*) ;
 int PIPE_MINDIRECT ;
 int PIPE_MTX (struct pipe*) ;
 struct pipe* PIPE_PEER (struct pipe*) ;
 int PIPE_UNLOCK (struct pipe*) ;
 int PIPE_WANT ;
 int PIPE_WANTR ;
 int PIPE_WANTW ;
 int PRIBIO ;
 int SMALL_PIPE_SIZE ;
 scalar_t__ UIO_USERSPACE ;
 int amountpipekva ;
 int mac_pipe_check_write (struct ucred*,int ) ;
 int max (int,int) ;
 int maxpipekva ;
 int msleep (struct pipe*,int ,int,char*,int ) ;
 int pipe_direct_write (struct pipe*,struct uio*) ;
 int pipelock (struct pipe*,int) ;
 int piperesizeallowed ;
 int pipeselwakeup (struct pipe*) ;
 int pipespace (struct pipe*,int) ;
 int pipeunlock (struct pipe*) ;
 int uiomove (int *,int,struct uio*) ;
 int vfs_timestamp (int *) ;
 int wakeup (struct pipe*) ;

__attribute__((used)) static int
pipe_write(struct file *fp, struct uio *uio, struct ucred *active_cred,
    int flags, struct thread *td)
{
 int error = 0;
 int desiredsize;
 ssize_t orig_resid;
 struct pipe *wpipe, *rpipe;

 rpipe = fp->f_data;
 wpipe = PIPE_PEER(rpipe);
 PIPE_LOCK(rpipe);
 error = pipelock(wpipe, 1);
 if (error) {
  PIPE_UNLOCK(rpipe);
  return (error);
 }



 if (wpipe->pipe_present != PIPE_ACTIVE ||
     (wpipe->pipe_state & PIPE_EOF)) {
  pipeunlock(wpipe);
  PIPE_UNLOCK(rpipe);
  return (EPIPE);
 }
 ++wpipe->pipe_busy;


 desiredsize = max(SMALL_PIPE_SIZE, wpipe->pipe_buffer.size);
 while (desiredsize < wpipe->pipe_buffer.cnt + uio->uio_resid) {
  if (piperesizeallowed != 1)
   break;
  if (amountpipekva > maxpipekva / 2)
   break;
  if (desiredsize == BIG_PIPE_SIZE)
   break;
  desiredsize = desiredsize * 2;
 }


 if ((amountpipekva > (3 * maxpipekva) / 4) &&
  (wpipe->pipe_buffer.size > SMALL_PIPE_SIZE) &&
  (wpipe->pipe_buffer.cnt <= SMALL_PIPE_SIZE) &&
  (piperesizeallowed == 1))
  desiredsize = SMALL_PIPE_SIZE;


 if ((desiredsize != wpipe->pipe_buffer.size) &&
  ((wpipe->pipe_state & PIPE_DIRECTW) == 0)) {
  PIPE_UNLOCK(wpipe);
  pipespace(wpipe, desiredsize);
  PIPE_LOCK(wpipe);
 }
 if (wpipe->pipe_buffer.size == 0) {




  error = ENOMEM;
  --wpipe->pipe_busy;
  pipeunlock(wpipe);
  PIPE_UNLOCK(wpipe);
  return (error);
 }

 pipeunlock(wpipe);

 orig_resid = uio->uio_resid;

 while (uio->uio_resid) {
  int space;

  pipelock(wpipe, 0);
  if (wpipe->pipe_state & PIPE_EOF) {
   pipeunlock(wpipe);
   error = EPIPE;
   break;
  }
  if (uio->uio_segflg == UIO_USERSPACE &&
      uio->uio_iov->iov_len >= PIPE_MINDIRECT &&
      wpipe->pipe_buffer.size >= PIPE_MINDIRECT &&
      (fp->f_flag & FNONBLOCK) == 0) {
   pipeunlock(wpipe);
   error = pipe_direct_write(wpipe, uio);
   if (error)
    break;
   continue;
  }
  if (wpipe->pipe_map.cnt != 0) {
   if (wpipe->pipe_state & PIPE_WANTR) {
    wpipe->pipe_state &= ~PIPE_WANTR;
    wakeup(wpipe);
   }
   pipeselwakeup(wpipe);
   wpipe->pipe_state |= PIPE_WANTW;
   pipeunlock(wpipe);
   error = msleep(wpipe, PIPE_MTX(rpipe), PRIBIO | PCATCH,
       "pipbww", 0);
   if (error)
    break;
   else
    continue;
  }

  space = wpipe->pipe_buffer.size - wpipe->pipe_buffer.cnt;


  if ((space < uio->uio_resid) && (orig_resid <= PIPE_BUF))
   space = 0;

  if (space > 0) {
   int size;
   int segsize;





   if (space > uio->uio_resid)
    size = uio->uio_resid;
   else
    size = space;







   segsize = wpipe->pipe_buffer.size -
    wpipe->pipe_buffer.in;
   if (segsize > size)
    segsize = size;



   PIPE_UNLOCK(rpipe);
   error = uiomove(&wpipe->pipe_buffer.buffer[wpipe->pipe_buffer.in],
     segsize, uio);
   PIPE_LOCK(rpipe);

   if (error == 0 && segsize < size) {
    KASSERT(wpipe->pipe_buffer.in + segsize ==
     wpipe->pipe_buffer.size,
     ("Pipe buffer wraparound disappeared"));






    PIPE_UNLOCK(rpipe);
    error = uiomove(
        &wpipe->pipe_buffer.buffer[0],
        size - segsize, uio);
    PIPE_LOCK(rpipe);
   }
   if (error == 0) {
    wpipe->pipe_buffer.in += size;
    if (wpipe->pipe_buffer.in >=
        wpipe->pipe_buffer.size) {
     KASSERT(wpipe->pipe_buffer.in ==
      size - segsize +
      wpipe->pipe_buffer.size,
      ("Expected wraparound bad"));
     wpipe->pipe_buffer.in = size - segsize;
    }

    wpipe->pipe_buffer.cnt += size;
    KASSERT(wpipe->pipe_buffer.cnt <=
     wpipe->pipe_buffer.size,
     ("Pipe buffer overflow"));
   }
   pipeunlock(wpipe);
   if (error != 0)
    break;
  } else {



   if (wpipe->pipe_state & PIPE_WANTR) {
    wpipe->pipe_state &= ~PIPE_WANTR;
    wakeup(wpipe);
   }




   if (fp->f_flag & FNONBLOCK) {
    error = EAGAIN;
    pipeunlock(wpipe);
    break;
   }





   pipeselwakeup(wpipe);

   wpipe->pipe_state |= PIPE_WANTW;
   pipeunlock(wpipe);
   error = msleep(wpipe, PIPE_MTX(rpipe),
       PRIBIO | PCATCH, "pipewr", 0);
   if (error != 0)
    break;
  }
 }

 pipelock(wpipe, 0);
 --wpipe->pipe_busy;

 if ((wpipe->pipe_busy == 0) && (wpipe->pipe_state & PIPE_WANT)) {
  wpipe->pipe_state &= ~(PIPE_WANT | PIPE_WANTR);
  wakeup(wpipe);
 } else if (wpipe->pipe_buffer.cnt > 0) {




  if (wpipe->pipe_state & PIPE_WANTR) {
   wpipe->pipe_state &= ~PIPE_WANTR;
   wakeup(wpipe);
  }
 }







 if (uio->uio_resid != orig_resid && error == EPIPE)
  error = 0;

 if (error == 0)
  vfs_timestamp(&wpipe->pipe_mtime);





 if (wpipe->pipe_buffer.cnt)
  pipeselwakeup(wpipe);

 pipeunlock(wpipe);
 PIPE_UNLOCK(rpipe);
 return (error);
}
