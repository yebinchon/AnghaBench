
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct shm_open2_args {int name; int shmflags; int mode; int flags; int path; } ;


 int kern_shm_open2 (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_shm_open2(struct thread *td, struct shm_open2_args *uap)
{

 return (kern_shm_open2(td, uap->path, uap->flags, uap->mode,
     uap->shmflags, uap->name));
}
