
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_execve_args {int envp; int argp; int path; } ;
struct image_args {int dummy; } ;


 int LCONVPATHEXIST (struct thread*,int ,char**) ;
 int M_TEMP ;
 int UIO_SYSSPACE ;
 int exec_copyin_args (struct image_args*,char*,int ,int ,int ) ;
 int free (char*,int ) ;
 int linux_common_execve (struct thread*,struct image_args*) ;

int
linux_execve(struct thread *td, struct linux_execve_args *args)
{
 struct image_args eargs;
 char *newpath;
 int error;

 LCONVPATHEXIST(td, args->path, &newpath);

 error = exec_copyin_args(&eargs, newpath, UIO_SYSSPACE,
     args->argp, args->envp);
 free(newpath, M_TEMP);
 if (error == 0)
  error = linux_common_execve(td, &eargs);
 return (error);
}
