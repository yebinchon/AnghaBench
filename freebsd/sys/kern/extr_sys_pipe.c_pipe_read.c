
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct uio {int uio_resid; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ cnt; int out; scalar_t__ in; int * buffer; } ;
struct TYPE_3__ {int cnt; int pos; int ms; } ;
struct pipe {scalar_t__ pipe_busy; int pipe_state; TYPE_2__ pipe_buffer; int pipe_atime; TYPE_1__ pipe_map; int pipe_pair; } ;
struct file {int f_flag; struct pipe* f_data; } ;


 int EAGAIN ;
 int FNONBLOCK ;
 scalar_t__ MINPIPESIZE ;
 int PCATCH ;
 scalar_t__ PIPE_BUF ;
 int PIPE_DIRECTW ;
 int PIPE_EOF ;
 int PIPE_LOCK (struct pipe*) ;
 int PIPE_MTX (struct pipe*) ;
 int PIPE_UNLOCK (struct pipe*) ;
 int PIPE_WANT ;
 int PIPE_WANTR ;
 int PIPE_WANTW ;
 int PRIBIO ;
 scalar_t__ SMALL_PIPE_SIZE ;
 int amountpipekva ;
 int mac_pipe_check_read (struct ucred*,int ) ;
 int maxpipekva ;
 int msleep (struct pipe*,int ,int,char*,int ) ;
 int pipelock (struct pipe*,int) ;
 int piperesizeallowed ;
 int pipeselwakeup (struct pipe*) ;
 int pipespace (struct pipe*,scalar_t__) ;
 int pipeunlock (struct pipe*) ;
 int uiomove (int *,int,struct uio*) ;
 int uiomove_fromphys (int ,int,int,struct uio*) ;
 int vfs_timestamp (int *) ;
 int wakeup (struct pipe*) ;

__attribute__((used)) static int
pipe_read(struct file *fp, struct uio *uio, struct ucred *active_cred,
    int flags, struct thread *td)
{
 struct pipe *rpipe;
 int error;
 int nread = 0;
 int size;

 rpipe = fp->f_data;
 PIPE_LOCK(rpipe);
 ++rpipe->pipe_busy;
 error = pipelock(rpipe, 1);
 if (error)
  goto unlocked_error;






 if (amountpipekva > (3 * maxpipekva) / 4) {
  if (!(rpipe->pipe_state & PIPE_DIRECTW) &&
   (rpipe->pipe_buffer.size > SMALL_PIPE_SIZE) &&
   (rpipe->pipe_buffer.cnt <= SMALL_PIPE_SIZE) &&
   (piperesizeallowed == 1)) {
   PIPE_UNLOCK(rpipe);
   pipespace(rpipe, SMALL_PIPE_SIZE);
   PIPE_LOCK(rpipe);
  }
 }

 while (uio->uio_resid) {



  if (rpipe->pipe_buffer.cnt > 0) {
   size = rpipe->pipe_buffer.size - rpipe->pipe_buffer.out;
   if (size > rpipe->pipe_buffer.cnt)
    size = rpipe->pipe_buffer.cnt;
   if (size > uio->uio_resid)
    size = uio->uio_resid;

   PIPE_UNLOCK(rpipe);
   error = uiomove(
       &rpipe->pipe_buffer.buffer[rpipe->pipe_buffer.out],
       size, uio);
   PIPE_LOCK(rpipe);
   if (error)
    break;

   rpipe->pipe_buffer.out += size;
   if (rpipe->pipe_buffer.out >= rpipe->pipe_buffer.size)
    rpipe->pipe_buffer.out = 0;

   rpipe->pipe_buffer.cnt -= size;






   if (rpipe->pipe_buffer.cnt == 0) {
    rpipe->pipe_buffer.in = 0;
    rpipe->pipe_buffer.out = 0;
   }
   nread += size;




  } else if ((size = rpipe->pipe_map.cnt) != 0) {
   if (size > uio->uio_resid)
    size = (u_int) uio->uio_resid;
   PIPE_UNLOCK(rpipe);
   error = uiomove_fromphys(rpipe->pipe_map.ms,
       rpipe->pipe_map.pos, size, uio);
   PIPE_LOCK(rpipe);
   if (error)
    break;
   nread += size;
   rpipe->pipe_map.pos += size;
   rpipe->pipe_map.cnt -= size;
   if (rpipe->pipe_map.cnt == 0) {
    rpipe->pipe_state &= ~PIPE_WANTW;
    wakeup(rpipe);
   }

  } else {




   if (rpipe->pipe_state & PIPE_EOF)
    break;




   if (rpipe->pipe_state & PIPE_WANTW) {
    rpipe->pipe_state &= ~PIPE_WANTW;
    wakeup(rpipe);
   }




   if (nread > 0)
    break;






   pipeunlock(rpipe);





   if (fp->f_flag & FNONBLOCK) {
    error = EAGAIN;
   } else {
    rpipe->pipe_state |= PIPE_WANTR;
    if ((error = msleep(rpipe, PIPE_MTX(rpipe),
        PRIBIO | PCATCH,
        "piperd", 0)) == 0)
     error = pipelock(rpipe, 1);
   }
   if (error)
    goto unlocked_error;
  }
 }



 pipeunlock(rpipe);


 if (error == 0)
  vfs_timestamp(&rpipe->pipe_atime);
unlocked_error:
 --rpipe->pipe_busy;




 if ((rpipe->pipe_busy == 0) && (rpipe->pipe_state & PIPE_WANT)) {
  rpipe->pipe_state &= ~(PIPE_WANT|PIPE_WANTW);
  wakeup(rpipe);
 } else if (rpipe->pipe_buffer.cnt < MINPIPESIZE) {



  if (rpipe->pipe_state & PIPE_WANTW) {
   rpipe->pipe_state &= ~PIPE_WANTW;
   wakeup(rpipe);
  }
 }

 if ((rpipe->pipe_buffer.size - rpipe->pipe_buffer.cnt) >= PIPE_BUF)
  pipeselwakeup(rpipe);

 PIPE_UNLOCK(rpipe);
 return (error);
}
