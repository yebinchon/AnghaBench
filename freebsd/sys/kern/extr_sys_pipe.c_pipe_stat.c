
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct stat {scalar_t__ st_size; int st_ino; int st_dev; int st_gid; int st_uid; int st_ctim; int st_mtim; int st_atim; int st_blksize; int st_blocks; int st_mode; } ;
struct TYPE_6__ {scalar_t__ cnt; } ;
struct TYPE_5__ {scalar_t__ cnt; } ;
struct pipe {int pipe_state; int pipe_ino; int pipe_ctime; int pipe_mtime; int pipe_atime; TYPE_2__ pipe_buffer; TYPE_1__ pipe_map; int pipe_pair; } ;
struct file {TYPE_3__* f_cred; struct pipe* f_data; } ;
struct TYPE_8__ {int (* fo_stat ) (struct file*,struct stat*,struct ucred*,struct thread*) ;} ;
struct TYPE_7__ {int cr_gid; int cr_uid; } ;


 int PAGE_SIZE ;
 int PIPE_LOCK (struct pipe*) ;
 int PIPE_NAMED ;
 int PIPE_UNLOCK (struct pipe*) ;
 int S_IFIFO ;
 int bzero (struct stat*,int) ;
 int howmany (scalar_t__,int ) ;
 int mac_pipe_check_stat (struct ucred*,int ) ;
 int pipedev_ino ;
 int stub1 (struct file*,struct stat*,struct ucred*,struct thread*) ;
 TYPE_4__ vnops ;

__attribute__((used)) static int
pipe_stat(struct file *fp, struct stat *ub, struct ucred *active_cred,
    struct thread *td)
{
 struct pipe *pipe;




 pipe = fp->f_data;
 PIPE_LOCK(pipe);
 if (pipe->pipe_state & PIPE_NAMED) {
  PIPE_UNLOCK(pipe);
  return (vnops.fo_stat(fp, ub, active_cred, td));
 }

 PIPE_UNLOCK(pipe);

 bzero(ub, sizeof(*ub));
 ub->st_mode = S_IFIFO;
 ub->st_blksize = PAGE_SIZE;
 if (pipe->pipe_map.cnt != 0)
  ub->st_size = pipe->pipe_map.cnt;
 else
  ub->st_size = pipe->pipe_buffer.cnt;
 ub->st_blocks = howmany(ub->st_size, ub->st_blksize);
 ub->st_atim = pipe->pipe_atime;
 ub->st_mtim = pipe->pipe_mtime;
 ub->st_ctim = pipe->pipe_ctime;
 ub->st_uid = fp->f_cred->cr_uid;
 ub->st_gid = fp->f_cred->cr_gid;
 ub->st_dev = pipedev_ino;
 ub->st_ino = pipe->pipe_ino;



 return (0);
}
