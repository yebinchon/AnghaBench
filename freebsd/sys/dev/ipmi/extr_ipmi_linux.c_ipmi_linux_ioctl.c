
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
 int IPMICTL_GET_MY_ADDRESS_CMD ;
 int IPMICTL_GET_MY_LUN_CMD ;


 int cap_rights_init (int *,int ) ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int ,int ,struct file**) ;
 int fo_ioctl (struct file*,int,int ,int ,struct thread*) ;

__attribute__((used)) static int
ipmi_linux_ioctl(struct thread *td, struct linux_ioctl_args *args)
{
 cap_rights_t rights;
 struct file *fp;
 u_long cmd;
 int error;

 error = fget(td, args->fd, cap_rights_init(&rights, CAP_IOCTL), &fp);
 if (error != 0)
  return (error);
 cmd = args->cmd;

 switch(cmd) {
 case 129:
  cmd = IPMICTL_GET_MY_ADDRESS_CMD;
  break;
 case 128:
  cmd = IPMICTL_GET_MY_LUN_CMD;
  break;
 }



 error = (fo_ioctl(fp, cmd, (caddr_t)args->arg, td->td_ucred, td));
 fdrop(fp, td);
 return (error);
}
