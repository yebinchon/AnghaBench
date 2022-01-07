
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_proc; } ;
struct sendmsg_args {int flags; int s; int msg; } ;
struct msghdr {scalar_t__ msg_flags; struct iovec* msg_iov; int msg_iovlen; } ;
struct iovec {int dummy; } ;
typedef int msg ;


 int EMSGSIZE ;
 int M_IOV ;
 int SV_AOUT ;
 scalar_t__ SV_PROC_FLAG (int ,int ) ;
 int copyin (int ,struct msghdr*,int) ;
 int copyiniov (struct iovec*,int ,struct iovec**,int ) ;
 int free (struct iovec*,int ) ;
 int sendit (struct thread*,int ,struct msghdr*,int ) ;

int
sys_sendmsg(struct thread *td, struct sendmsg_args *uap)
{
 struct msghdr msg;
 struct iovec *iov;
 int error;

 error = copyin(uap->msg, &msg, sizeof (msg));
 if (error != 0)
  return (error);
 error = copyiniov(msg.msg_iov, msg.msg_iovlen, &iov, EMSGSIZE);
 if (error != 0)
  return (error);
 msg.msg_iov = iov;




 error = sendit(td, uap->s, &msg, uap->flags);
 free(iov, M_IOV);
 return (error);
}
