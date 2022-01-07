
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct msgsnd_args {int msgflg; int msgsz; scalar_t__ msgp; int msqid; } ;
typedef int mtype ;


 int DPRINTF (char*) ;
 int copyin (scalar_t__,long*,int) ;
 int kern_msgsnd (struct thread*,int ,char const*,int ,int ,long) ;

int
sys_msgsnd(struct thread *td, struct msgsnd_args *uap)
{
 int error;
 long mtype;

 DPRINTF(("call to msgsnd(%d, %p, %zu, %d)\n", uap->msqid, uap->msgp,
     uap->msgsz, uap->msgflg));

 if ((error = copyin(uap->msgp, &mtype, sizeof(mtype))) != 0) {
  DPRINTF(("error %d copying the message type\n", error));
  return (error);
 }
 return (kern_msgsnd(td, uap->msqid,
     (const char *)uap->msgp + sizeof(mtype),
     uap->msgsz, uap->msgflg, mtype));
}
