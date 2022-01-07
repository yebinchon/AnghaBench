
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_proc; } ;
struct msghdr {int msg_flags; int msg_namelen; } ;
typedef int socklen_t ;


 int MSG_COMPAT ;
 int SV_AOUT ;
 scalar_t__ SV_PROC_FLAG (int ,int ) ;
 int UIO_USERSPACE ;
 int copyout (int *,void*,int) ;
 int kern_recvit (struct thread*,int,struct msghdr*,int ,int *) ;

__attribute__((used)) static int
recvit(struct thread *td, int s, struct msghdr *mp, void *namelenp)
{
 int error;

 error = kern_recvit(td, s, mp, UIO_USERSPACE, ((void*)0));
 if (error != 0)
  return (error);
 if (namelenp != ((void*)0)) {
  error = copyout(&mp->msg_namelen, namelenp, sizeof (socklen_t));





 }
 return (error);
}
