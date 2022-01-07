
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int SYSVSHM_LOCK () ;
 int SYSVSHM_UNLOCK () ;
 int kern_shmat_locked (struct thread*,int,void const*,int) ;

int
kern_shmat(struct thread *td, int shmid, const void *shmaddr, int shmflg)
{
 int error;

 SYSVSHM_LOCK();
 error = kern_shmat_locked(td, shmid, shmaddr, shmflg);
 SYSVSHM_UNLOCK();
 return (error);
}
