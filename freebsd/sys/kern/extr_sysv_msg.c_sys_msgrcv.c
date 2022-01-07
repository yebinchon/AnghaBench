
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct msgrcv_args {scalar_t__ msgp; int msgflg; int msgtyp; int msgsz; int msqid; } ;
typedef int mtype ;


 int DPRINTF (char*) ;
 int copyout (long*,scalar_t__,int) ;
 int kern_msgrcv (struct thread*,int ,char*,int ,int ,int ,long*) ;

int
sys_msgrcv(struct thread *td, struct msgrcv_args *uap)
{
 int error;
 long mtype;

 DPRINTF(("call to msgrcv(%d, %p, %zu, %ld, %d)\n", uap->msqid,
     uap->msgp, uap->msgsz, uap->msgtyp, uap->msgflg));

 if ((error = kern_msgrcv(td, uap->msqid,
     (char *)uap->msgp + sizeof(mtype), uap->msgsz,
     uap->msgtyp, uap->msgflg, &mtype)) != 0)
  return (error);
 if ((error = copyout(&mtype, uap->msgp, sizeof(mtype))) != 0)
  DPRINTF(("error %d copying the message type\n", error));
 return (error);
}
