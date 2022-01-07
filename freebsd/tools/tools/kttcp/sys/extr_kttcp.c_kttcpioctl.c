
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct kttcp_io_args {int dummy; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int EPERM ;
 int FWRITE ;


 int kttcp_recv (struct thread*,struct kttcp_io_args*) ;
 int kttcp_send (struct thread*,struct kttcp_io_args*) ;

__attribute__((used)) static int
kttcpioctl(struct cdev *dev, u_long cmd, caddr_t data, int flag, struct thread *td)
{
 int error;

 if ((flag & FWRITE) == 0)
  return EPERM;

 switch (cmd) {
 case 128:
  error = kttcp_send(td, (struct kttcp_io_args *) data);
  break;

 case 129:
  error = kttcp_recv(td, (struct kttcp_io_args *) data);
  break;

 default:
  return EINVAL;
 }

 return error;
}
