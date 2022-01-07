
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int* td_retval; } ;
struct shmid_ds {int dummy; } ;
struct shmctl_args {int cmd; int buf; int shmid; } ;


 int EINVAL ;
 int IPC_INFO ;
 int IPC_SET ;

 int SHM_INFO ;
 int SHM_STAT ;
 int copyin (int ,struct shmid_ds*,int) ;
 int copyout (struct shmid_ds*,int ,size_t) ;
 int kern_shmctl (struct thread*,int ,int,void*,size_t*) ;

int
sys_shmctl(struct thread *td, struct shmctl_args *uap)
{
 int error;
 struct shmid_ds buf;
 size_t bufsz;






 if (uap->cmd == IPC_INFO || uap->cmd == SHM_INFO ||
     uap->cmd == SHM_STAT)
  return (EINVAL);


 if (uap->cmd == IPC_SET) {
  if ((error = copyin(uap->buf, &buf, sizeof(struct shmid_ds))))
   goto done;
 }

 error = kern_shmctl(td, uap->shmid, uap->cmd, (void *)&buf, &bufsz);
 if (error)
  goto done;


 switch (uap->cmd) {
 case 128:
  error = copyout(&buf, uap->buf, bufsz);
  break;
 }

done:
 if (error) {

  td->td_retval[0] = -1;
 }
 return (error);
}
