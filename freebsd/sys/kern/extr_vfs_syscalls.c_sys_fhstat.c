
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct stat {int dummy; } ;
struct fhstat_args {int sb; int u_fhp; } ;
struct fhandle {int dummy; } ;
typedef int sb ;
typedef int fh ;


 int copyin (int ,struct fhandle*,int) ;
 int copyout (struct stat*,int ,int) ;
 int kern_fhstat (struct thread*,struct fhandle,struct stat*) ;

int
sys_fhstat(struct thread *td, struct fhstat_args *uap)
{
 struct stat sb;
 struct fhandle fh;
 int error;

 error = copyin(uap->u_fhp, &fh, sizeof(fh));
 if (error != 0)
  return (error);
 error = kern_fhstat(td, fh, &sb);
 if (error == 0)
  error = copyout(&sb, uap->sb, sizeof(sb));
 return (error);
}
