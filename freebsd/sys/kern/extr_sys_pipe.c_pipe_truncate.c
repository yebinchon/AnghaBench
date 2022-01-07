
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct pipe {int pipe_state; } ;
struct file {struct pipe* f_data; } ;
typedef int off_t ;
struct TYPE_2__ {int (* fo_truncate ) (struct file*,int ,struct ucred*,struct thread*) ;} ;


 int PIPE_NAMED ;
 int invfo_truncate (struct file*,int ,struct ucred*,struct thread*) ;
 int stub1 (struct file*,int ,struct ucred*,struct thread*) ;
 TYPE_1__ vnops ;

__attribute__((used)) static int
pipe_truncate(struct file *fp, off_t length, struct ucred *active_cred,
    struct thread *td)
{
 struct pipe *cpipe;
 int error;

 cpipe = fp->f_data;
 if (cpipe->pipe_state & PIPE_NAMED)
  error = vnops.fo_truncate(fp, length, active_cred, td);
 else
  error = invfo_truncate(fp, length, active_cred, td);
 return (error);
}
