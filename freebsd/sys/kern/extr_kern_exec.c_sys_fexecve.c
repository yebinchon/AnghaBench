
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmspace {int dummy; } ;
struct thread {int dummy; } ;
struct image_args {int fd; } ;
struct fexecve_args {int fd; int envv; int argv; } ;


 int UIO_SYSSPACE ;
 int exec_copyin_args (struct image_args*,int *,int ,int ,int ) ;
 int kern_execve (struct thread*,struct image_args*,int *) ;
 int post_execve (struct thread*,int,struct vmspace*) ;
 int pre_execve (struct thread*,struct vmspace**) ;

int
sys_fexecve(struct thread *td, struct fexecve_args *uap)
{
 struct image_args args;
 struct vmspace *oldvmspace;
 int error;

 error = pre_execve(td, &oldvmspace);
 if (error != 0)
  return (error);
 error = exec_copyin_args(&args, ((void*)0), UIO_SYSSPACE,
     uap->argv, uap->envv);
 if (error == 0) {
  args.fd = uap->fd;
  error = kern_execve(td, &args, ((void*)0));
 }
 post_execve(td, error, oldvmspace);
 return (error);
}
