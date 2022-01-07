
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_frame; int td_ucred; } ;
struct linux_iopl_args {int level; } ;
struct TYPE_2__ {int tf_eflags; } ;


 int EINVAL ;
 int PRIV_IO ;
 int PSL_IOPL ;
 int priv_check (struct thread*,int ) ;
 int securelevel_gt (int ,int ) ;

int
linux_iopl(struct thread *td, struct linux_iopl_args *args)
{
 int error;

 if (args->level < 0 || args->level > 3)
  return (EINVAL);
 if ((error = priv_check(td, PRIV_IO)) != 0)
  return (error);
 if ((error = securelevel_gt(td->td_ucred, 0)) != 0)
  return (error);
 td->td_frame->tf_eflags = (td->td_frame->tf_eflags & ~PSL_IOPL) |
     (args->level * (PSL_IOPL / 3));
 return (0);
}
