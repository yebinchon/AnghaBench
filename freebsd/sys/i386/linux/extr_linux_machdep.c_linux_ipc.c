
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct thread {int * td_retval; } ;
struct linux_shmget_args {int shmflg; int size; int key; } ;
struct linux_shmdt_args {void* shmaddr; } ;
struct linux_shmctl_args {void* buf; int cmd; int shmid; } ;
struct linux_shmat_args {int shmflg; void* shmaddr; int shmid; } ;
struct linux_semop_args {int nsops; void* tsops; int semid; } ;
struct linux_semget_args {int semflg; int nsems; int key; } ;
struct l_ipc_kludge {int msgtyp; int msgp; } ;
struct linux_semctl_args {struct l_ipc_kludge arg; int cmd; int semnum; int semid; } ;
struct linux_msgsnd_args {int msgflg; int msgsz; void* msgp; int msqid; } ;
struct linux_msgrcv_args {int msgtyp; void* msgp; int msgflg; int msgsz; int msqid; } ;
struct linux_msgget_args {int msgflg; int key; } ;
struct linux_msgctl_args {void* buf; int cmd; int msqid; } ;
struct linux_ipc_args {int what; int ptr; int arg2; int arg1; int arg3; int arg5; } ;
typedef int l_uintptr_t ;
typedef int addr ;


 int EINVAL ;
 void* PTRIN (int ) ;
 int copyin (void*,struct l_ipc_kludge*,int) ;
 int copyout (int *,void*,int) ;
 int linux_msgctl (struct thread*,struct linux_msgctl_args*) ;
 int linux_msgget (struct thread*,struct linux_msgget_args*) ;
 int linux_msgrcv (struct thread*,struct linux_msgrcv_args*) ;
 int linux_msgsnd (struct thread*,struct linux_msgsnd_args*) ;
 int linux_semctl (struct thread*,struct linux_semctl_args*) ;
 int linux_semget (struct thread*,struct linux_semget_args*) ;
 int linux_semop (struct thread*,struct linux_semop_args*) ;
 int linux_shmat (struct thread*,struct linux_shmat_args*) ;
 int linux_shmctl (struct thread*,struct linux_shmctl_args*) ;
 int linux_shmdt (struct thread*,struct linux_shmdt_args*) ;
 int linux_shmget (struct thread*,struct linux_shmget_args*) ;

int
linux_ipc(struct thread *td, struct linux_ipc_args *args)
{

 switch (args->what & 0xFFFF) {
 case 132: {
  struct linux_semop_args a;

  a.semid = args->arg1;
  a.tsops = PTRIN(args->ptr);
  a.nsops = args->arg2;
  return (linux_semop(td, &a));
 }
 case 133: {
  struct linux_semget_args a;

  a.key = args->arg1;
  a.nsems = args->arg2;
  a.semflg = args->arg3;
  return (linux_semget(td, &a));
 }
 case 134: {
  struct linux_semctl_args a;
  int error;

  a.semid = args->arg1;
  a.semnum = args->arg2;
  a.cmd = args->arg3;
  error = copyin(PTRIN(args->ptr), &a.arg, sizeof(a.arg));
  if (error)
   return (error);
  return (linux_semctl(td, &a));
 }
 case 135: {
  struct linux_msgsnd_args a;

  a.msqid = args->arg1;
  a.msgp = PTRIN(args->ptr);
  a.msgsz = args->arg2;
  a.msgflg = args->arg3;
  return (linux_msgsnd(td, &a));
 }
 case 136: {
  struct linux_msgrcv_args a;

  a.msqid = args->arg1;
  a.msgsz = args->arg2;
  a.msgflg = args->arg3;
  if ((args->what >> 16) == 0) {
   struct l_ipc_kludge tmp;
   int error;

   if (args->ptr == 0)
    return (EINVAL);
   error = copyin(PTRIN(args->ptr), &tmp, sizeof(tmp));
   if (error)
    return (error);
   a.msgp = PTRIN(tmp.msgp);
   a.msgtyp = tmp.msgtyp;
  } else {
   a.msgp = PTRIN(args->ptr);
   a.msgtyp = args->arg5;
  }
  return (linux_msgrcv(td, &a));
 }
 case 137: {
  struct linux_msgget_args a;

  a.key = args->arg1;
  a.msgflg = args->arg2;
  return (linux_msgget(td, &a));
 }
 case 138: {
  struct linux_msgctl_args a;

  a.msqid = args->arg1;
  a.cmd = args->arg2;
  a.buf = PTRIN(args->ptr);
  return (linux_msgctl(td, &a));
 }
 case 131: {
  struct linux_shmat_args a;
  l_uintptr_t addr;
  int error;

  a.shmid = args->arg1;
  a.shmaddr = PTRIN(args->ptr);
  a.shmflg = args->arg2;
  error = linux_shmat(td, &a);
  if (error != 0)
   return (error);
  addr = td->td_retval[0];
  error = copyout(&addr, PTRIN(args->arg3), sizeof(addr));
  td->td_retval[0] = 0;
  return (error);
 }
 case 129: {
  struct linux_shmdt_args a;

  a.shmaddr = PTRIN(args->ptr);
  return (linux_shmdt(td, &a));
 }
 case 128: {
  struct linux_shmget_args a;

  a.key = args->arg1;
  a.size = args->arg2;
  a.shmflg = args->arg3;
  return (linux_shmget(td, &a));
 }
 case 130: {
  struct linux_shmctl_args a;

  a.shmid = args->arg1;
  a.cmd = args->arg2;
  a.buf = PTRIN(args->ptr);
  return (linux_shmctl(td, &a));
 }
 default:
  break;
 }

 return (EINVAL);
}
