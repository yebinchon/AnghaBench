
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct recvfrom_args {int fromlenaddr; int s; int flags; int len; int buf; int from; } ;
struct msghdr {int msg_iovlen; int msg_flags; scalar_t__ msg_control; struct iovec* msg_iov; int msg_name; scalar_t__ msg_namelen; } ;
struct iovec {int iov_len; int iov_base; } ;


 int copyin (int ,scalar_t__*,int) ;
 int recvit (struct thread*,int ,struct msghdr*,int ) ;

int
sys_recvfrom(struct thread *td, struct recvfrom_args *uap)
{
 struct msghdr msg;
 struct iovec aiov;
 int error;

 if (uap->fromlenaddr) {
  error = copyin(uap->fromlenaddr,
      &msg.msg_namelen, sizeof (msg.msg_namelen));
  if (error != 0)
   goto done2;
 } else {
  msg.msg_namelen = 0;
 }
 msg.msg_name = uap->from;
 msg.msg_iov = &aiov;
 msg.msg_iovlen = 1;
 aiov.iov_base = uap->buf;
 aiov.iov_len = uap->len;
 msg.msg_control = 0;
 msg.msg_flags = uap->flags;
 error = recvit(td, uap->s, &msg, uap->fromlenaddr);
done2:
 return (error);
}
