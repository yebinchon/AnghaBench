
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct statfs_args {int buf; int path; } ;
struct statfs {int dummy; } ;


 int M_STATFS ;
 int M_WAITOK ;
 int UIO_USERSPACE ;
 int copyout (struct statfs*,int ,int) ;
 int free (struct statfs*,int ) ;
 int kern_statfs (struct thread*,int ,int ,struct statfs*) ;
 struct statfs* malloc (int,int ,int ) ;

int
sys_statfs(struct thread *td, struct statfs_args *uap)
{
 struct statfs *sfp;
 int error;

 sfp = malloc(sizeof(struct statfs), M_STATFS, M_WAITOK);
 error = kern_statfs(td, uap->path, UIO_USERSPACE, sfp);
 if (error == 0)
  error = copyout(sfp, uap->buf, sizeof(struct statfs));
 free(sfp, M_STATFS);
 return (error);
}
