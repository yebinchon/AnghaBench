
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uio {int dummy; } ;
struct TYPE_4__ {scalar_t__ cnt; } ;
struct TYPE_3__ {scalar_t__ cnt; } ;
struct pipe {int pipe_state; TYPE_2__ pipe_map; TYPE_1__ pipe_buffer; } ;


 int EINTR ;
 int EPIPE ;
 int ERESTART ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int PCATCH ;
 int PIPE_DIRECTW ;
 int PIPE_EOF ;
 int PIPE_LOCK_ASSERT (struct pipe*,int ) ;
 int PIPE_MTX (struct pipe*) ;
 int PIPE_WANTR ;
 int PIPE_WANTW ;
 int PRIBIO ;
 int msleep (struct pipe*,int ,int,char*,int ) ;
 int pipe_build_write_buffer (struct pipe*,struct uio*) ;
 int pipe_clone_write_buffer (struct pipe*) ;
 int pipe_destroy_write_buffer (struct pipe*) ;
 int pipelock (struct pipe*,int) ;
 int pipeselwakeup (struct pipe*) ;
 int pipeunlock (struct pipe*) ;
 int wakeup (struct pipe*) ;

__attribute__((used)) static int
pipe_direct_write(struct pipe *wpipe, struct uio *uio)
{
 int error;

retry:
 PIPE_LOCK_ASSERT(wpipe, MA_OWNED);
 error = pipelock(wpipe, 1);
 if (error != 0)
  goto error1;
 if ((wpipe->pipe_state & PIPE_EOF) != 0) {
  error = EPIPE;
  pipeunlock(wpipe);
  goto error1;
 }
 if (wpipe->pipe_state & PIPE_DIRECTW) {
  if (wpipe->pipe_state & PIPE_WANTR) {
   wpipe->pipe_state &= ~PIPE_WANTR;
   wakeup(wpipe);
  }
  pipeselwakeup(wpipe);
  wpipe->pipe_state |= PIPE_WANTW;
  pipeunlock(wpipe);
  error = msleep(wpipe, PIPE_MTX(wpipe),
      PRIBIO | PCATCH, "pipdww", 0);
  if (error)
   goto error1;
  else
   goto retry;
 }
 if (wpipe->pipe_buffer.cnt > 0) {
  if (wpipe->pipe_state & PIPE_WANTR) {
   wpipe->pipe_state &= ~PIPE_WANTR;
   wakeup(wpipe);
  }
  pipeselwakeup(wpipe);
  wpipe->pipe_state |= PIPE_WANTW;
  pipeunlock(wpipe);
  error = msleep(wpipe, PIPE_MTX(wpipe),
      PRIBIO | PCATCH, "pipdwc", 0);
  if (error)
   goto error1;
  else
   goto retry;
 }

 error = pipe_build_write_buffer(wpipe, uio);
 if (error) {
  pipeunlock(wpipe);
  goto error1;
 }

 while (wpipe->pipe_map.cnt != 0 &&
     (wpipe->pipe_state & PIPE_EOF) == 0) {
  if (wpipe->pipe_state & PIPE_WANTR) {
   wpipe->pipe_state &= ~PIPE_WANTR;
   wakeup(wpipe);
  }
  pipeselwakeup(wpipe);
  wpipe->pipe_state |= PIPE_WANTW;
  pipeunlock(wpipe);
  error = msleep(wpipe, PIPE_MTX(wpipe), PRIBIO | PCATCH,
      "pipdwt", 0);
  pipelock(wpipe, 0);
  if (error != 0)
   break;
 }

 if ((wpipe->pipe_state & PIPE_EOF) != 0) {
  wpipe->pipe_map.cnt = 0;
  pipe_destroy_write_buffer(wpipe);
  pipeselwakeup(wpipe);
  error = EPIPE;
 } else if (error == EINTR || error == ERESTART) {
  pipe_clone_write_buffer(wpipe);
 } else {
  pipe_destroy_write_buffer(wpipe);
 }
 pipeunlock(wpipe);
 KASSERT((wpipe->pipe_state & PIPE_DIRECTW) == 0,
     ("pipe %p leaked PIPE_DIRECTW", wpipe));
 return (error);

error1:
 wakeup(wpipe);
 return (error);
}
