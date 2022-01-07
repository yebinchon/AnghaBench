
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct shmat_args {int shmflg; int shmaddr; int shmid; } ;


 int kern_shmat (struct thread*,int ,int ,int ) ;

int
sys_shmat(struct thread *td, struct shmat_args *uap)
{

 return (kern_shmat(td, uap->shmid, uap->shmaddr, uap->shmflg));
}
