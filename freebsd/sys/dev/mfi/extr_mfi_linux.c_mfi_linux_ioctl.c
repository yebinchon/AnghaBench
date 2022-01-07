
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int td_ucred; } ;
struct linux_ioctl_args {int cmd; scalar_t__ arg; int fd; } ;
struct file {int dummy; } ;
typedef int cap_rights_t ;
typedef int caddr_t ;


 int CAP_IOCTL ;

 int MFI_LINUX_CMD_2 ;

 int MFI_LINUX_SET_AEN_2 ;
 int cap_rights_init (int *,int ) ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int ,int ,struct file**) ;
 int fo_ioctl (struct file*,int,int ,int ,struct thread*) ;

__attribute__((used)) static int
mfi_linux_ioctl(struct thread *p, struct linux_ioctl_args *args)
{
 cap_rights_t rights;
 struct file *fp;
 int error;
 u_long cmd = args->cmd;

 switch (cmd) {
 case 129:
  cmd = MFI_LINUX_CMD_2;
  break;
 case 128:
  cmd = MFI_LINUX_SET_AEN_2;
  break;
 }

 error = fget(p, args->fd, cap_rights_init(&rights, CAP_IOCTL), &fp);
 if (error != 0)
  return (error);
 error = fo_ioctl(fp, cmd, (caddr_t)args->arg, p->td_ucred, p);
 fdrop(fp, p);
 return (error);
}
