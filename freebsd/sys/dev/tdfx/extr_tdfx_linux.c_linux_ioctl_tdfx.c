
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int td_ucred; } ;
struct linux_ioctl_args {int cmd; scalar_t__ arg; int fd; } ;
struct file {int dummy; } ;
typedef int d_pio ;
typedef int cap_rights_t ;
typedef int caddr_t ;


 int CAP_IOCTL ;
 int cap_rights_init (int *,int ) ;
 int copyin (int ,char**,int) ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int ,int ,struct file**) ;
 int fo_ioctl (struct file*,int,int ,int ,struct thread*) ;

__attribute__((used)) static int
linux_ioctl_tdfx(struct thread *td, struct linux_ioctl_args* args)
{
   cap_rights_t rights;
   int error = 0;
   u_long cmd = args->cmd & 0xffff;



   char d_pio[2*sizeof(short) + sizeof(int) + sizeof(void*)];

   struct file *fp;

   error = fget(td, args->fd, cap_rights_init(&rights, CAP_IOCTL), &fp);
   if (error != 0)
    return (error);

   copyin((caddr_t)args->arg, &d_pio, sizeof(d_pio));
   error = fo_ioctl(fp, cmd, (caddr_t)&d_pio, td->td_ucred, td);
   fdrop(fp, td);
   return error;
}
