
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int SYSVSHM_LOCK () ;
 int SYSVSHM_UNLOCK () ;
 int kern_shmctl_locked (struct thread*,int,int,void*,size_t*) ;

int
kern_shmctl(struct thread *td, int shmid, int cmd, void *buf, size_t *bufsz)
{
 int error;

 SYSVSHM_LOCK();
 error = kern_shmctl_locked(td, shmid, cmd, buf, bufsz);
 SYSVSHM_UNLOCK();
 return (error);
}
