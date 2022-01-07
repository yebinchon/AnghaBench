
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union semun {union semun* buf; int val; int array; } ;
struct thread {int * td_retval; } ;
struct semid_ds {struct semid_ds* buf; int val; int array; } ;
struct __semctl_args {int cmd; int semnum; int semid; union semun* arg; } ;
typedef int register_t ;
typedef int dsbuf ;
typedef int arg ;
 int copyin (union semun*,union semun*,int) ;
 int copyout (union semun*,union semun*,int) ;
 int kern_semctl (struct thread*,int ,int ,int,union semun*,int *) ;

int
sys___semctl(struct thread *td, struct __semctl_args *uap)
{
 struct semid_ds dsbuf;
 union semun arg, semun;
 register_t rval;
 int error;

 switch (uap->cmd) {
 case 130:
 case 132:
 case 131:
 case 133:
 case 128:
 case 129:
  error = copyin(uap->arg, &arg, sizeof(arg));
  if (error)
   return (error);
  break;
 }

 switch (uap->cmd) {
 case 130:
 case 131:
  semun.buf = &dsbuf;
  break;
 case 132:
  error = copyin(arg.buf, &dsbuf, sizeof(dsbuf));
  if (error)
   return (error);
  semun.buf = &dsbuf;
  break;
 case 133:
 case 129:
  semun.array = arg.array;
  break;
 case 128:
  semun.val = arg.val;
  break;
 }

 error = kern_semctl(td, uap->semid, uap->semnum, uap->cmd, &semun,
     &rval);
 if (error)
  return (error);

 switch (uap->cmd) {
 case 130:
 case 131:
  error = copyout(&dsbuf, arg.buf, sizeof(dsbuf));
  break;
 }

 if (error == 0)
  td->td_retval[0] = rval;
 return (error);
}
