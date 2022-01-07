
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct shmdt_args {int shmaddr; } ;


 int SYSVSHM_LOCK () ;
 int SYSVSHM_UNLOCK () ;
 int kern_shmdt_locked (struct thread*,int ) ;

int
sys_shmdt(struct thread *td, struct shmdt_args *uap)
{
 int error;

 SYSVSHM_LOCK();
 error = kern_shmdt_locked(td, uap->shmaddr);
 SYSVSHM_UNLOCK();
 return (error);
}
