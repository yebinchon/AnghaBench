
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_proc; } ;
struct recvmsg_args {int msg; int s; int flags; } ;
struct msghdr {struct iovec* msg_iov; int msg_flags; int msg_iovlen; } ;
struct iovec {int dummy; } ;
typedef int msg ;


 int EMSGSIZE ;
 int MSG_COMPAT ;
 int M_IOV ;
 int SV_AOUT ;
 scalar_t__ SV_PROC_FLAG (int ,int ) ;
 int copyin (int ,struct msghdr*,int) ;
 int copyiniov (struct iovec*,int ,struct iovec**,int ) ;
 int copyout (struct msghdr*,int ,int) ;
 int free (struct iovec*,int ) ;
 int recvit (struct thread*,int ,struct msghdr*,int *) ;

int
sys_recvmsg(struct thread *td, struct recvmsg_args *uap)
{
 struct msghdr msg;
 struct iovec *uiov, *iov;
 int error;

 error = copyin(uap->msg, &msg, sizeof (msg));
 if (error != 0)
  return (error);
 error = copyiniov(msg.msg_iov, msg.msg_iovlen, &iov, EMSGSIZE);
 if (error != 0)
  return (error);
 msg.msg_flags = uap->flags;




 uiov = msg.msg_iov;
 msg.msg_iov = iov;
 error = recvit(td, uap->s, &msg, ((void*)0));
 if (error == 0) {
  msg.msg_iov = uiov;
  error = copyout(&msg, uap->msg, sizeof(msg));
 }
 free(iov, M_IOV);
 return (error);
}
