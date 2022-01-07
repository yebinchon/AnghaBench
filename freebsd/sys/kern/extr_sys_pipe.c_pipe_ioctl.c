
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_4__ {int cnt; } ;
struct TYPE_3__ {int cnt; } ;
struct pipe {int pipe_sigio; TYPE_2__ pipe_buffer; TYPE_1__ pipe_map; int pipe_state; int pipe_pair; } ;
struct file {int f_flag; struct pipe* f_data; } ;


 int ENOTTY ;





 int FREAD ;
 int PIPE_ASYNC ;
 int PIPE_LOCK (struct pipe*) ;
 int PIPE_UNLOCK (struct pipe*) ;


 int fgetown (int *) ;
 int fsetown (int,int *) ;
 int mac_pipe_check_ioctl (struct ucred*,int ,int ,void*) ;

__attribute__((used)) static int
pipe_ioctl(struct file *fp, u_long cmd, void *data, struct ucred *active_cred,
    struct thread *td)
{
 struct pipe *mpipe = fp->f_data;
 int error;

 PIPE_LOCK(mpipe);
 error = 0;
 switch (cmd) {

 case 132:
  break;

 case 134:
  if (*(int *)data) {
   mpipe->pipe_state |= PIPE_ASYNC;
  } else {
   mpipe->pipe_state &= ~PIPE_ASYNC;
  }
  break;

 case 131:
  if (!(fp->f_flag & FREAD)) {
   *(int *)data = 0;
   PIPE_UNLOCK(mpipe);
   return (0);
  }
  if (mpipe->pipe_map.cnt != 0)
   *(int *)data = mpipe->pipe_map.cnt;
  else
   *(int *)data = mpipe->pipe_buffer.cnt;
  break;

 case 130:
  PIPE_UNLOCK(mpipe);
  error = fsetown(*(int *)data, &mpipe->pipe_sigio);
  goto out_unlocked;

 case 133:
  *(int *)data = fgetown(&mpipe->pipe_sigio);
  break;


 case 128:
  PIPE_UNLOCK(mpipe);
  error = fsetown(-(*(int *)data), &mpipe->pipe_sigio);
  goto out_unlocked;


 case 129:
  *(int *)data = -fgetown(&mpipe->pipe_sigio);
  break;

 default:
  error = ENOTTY;
  break;
 }
 PIPE_UNLOCK(mpipe);
out_unlocked:
 return (error);
}
