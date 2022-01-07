
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct stat {int dummy; } ;
struct fstatat_args {int buf; int path; int fd; int flag; } ;
typedef int sb ;


 int UIO_USERSPACE ;
 int copyout (struct stat*,int ,int) ;
 int kern_statat (struct thread*,int ,int ,int ,int ,struct stat*,int *) ;

int
sys_fstatat(struct thread *td, struct fstatat_args *uap)
{
 struct stat sb;
 int error;

 error = kern_statat(td, uap->flag, uap->fd, uap->path,
     UIO_USERSPACE, &sb, ((void*)0));
 if (error == 0)
  error = copyout(&sb, uap->buf, sizeof (sb));
 return (error);
}
