
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct statfs {int dummy; } ;
struct fhstatfs_args {int buf; int u_fhp; } ;
typedef int fhandle_t ;


 int M_STATFS ;
 int M_WAITOK ;
 int copyin (int ,int *,int) ;
 int copyout (struct statfs*,int ,int) ;
 int free (struct statfs*,int ) ;
 int kern_fhstatfs (struct thread*,int ,struct statfs*) ;
 struct statfs* malloc (int,int ,int ) ;

int
sys_fhstatfs(struct thread *td, struct fhstatfs_args *uap)
{
 struct statfs *sfp;
 fhandle_t fh;
 int error;

 error = copyin(uap->u_fhp, &fh, sizeof(fhandle_t));
 if (error != 0)
  return (error);
 sfp = malloc(sizeof(struct statfs), M_STATFS, M_WAITOK);
 error = kern_fhstatfs(td, fh, sfp);
 if (error == 0)
  error = copyout(sfp, uap->buf, sizeof(*sfp));
 free(sfp, M_STATFS);
 return (error);
}
