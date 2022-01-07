
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ub ;
struct thread {int dummy; } ;
struct stat {int dummy; } ;
struct fstat_args {int sb; int fd; } ;


 int copyout (struct stat*,int ,int) ;
 int kern_fstat (struct thread*,int ,struct stat*) ;

int
sys_fstat(struct thread *td, struct fstat_args *uap)
{
 struct stat ub;
 int error;

 error = kern_fstat(td, uap->fd, &ub);
 if (error == 0)
  error = copyout(&ub, uap->sb, sizeof(ub));
 return (error);
}
