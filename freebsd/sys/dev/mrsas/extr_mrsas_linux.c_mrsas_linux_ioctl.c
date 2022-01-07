
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct thread {int td_ucred; } ;
struct linux_ioctl_args {scalar_t__ cmd; scalar_t__ arg; int fd; } ;
struct file {int dummy; } ;
typedef int cap_rights_t ;
typedef int caddr_t ;


 int CAP_IOCTL ;
 int ENOTSUP ;
 scalar_t__ MRSAS_LINUX_CMD32 ;
 int cap_rights_init (int *,int ) ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int ,int ,...) ;
 int fo_ioctl (struct file*,scalar_t__,int ,int ,struct thread*) ;

__attribute__((used)) static int
mrsas_linux_ioctl(struct thread *p, struct linux_ioctl_args *args)
{




 struct file *fp;
 int error;
 u_long cmd = args->cmd;

 if (cmd != MRSAS_LINUX_CMD32) {
  error = ENOTSUP;
  goto END;
 }



 error = fget(p, args->fd, &fp);




 if (error != 0)
  goto END;

 error = fo_ioctl(fp, cmd, (caddr_t)args->arg, p->td_ucred, p);
 fdrop(fp, p);
END:
 return (error);
}
