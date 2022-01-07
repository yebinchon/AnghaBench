
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct statfs {int dummy; } ;
struct fstatfs_args {int buf; int fd; } ;


 int M_STATFS ;
 int M_WAITOK ;
 int copyout (struct statfs*,int ,int) ;
 int free (struct statfs*,int ) ;
 int kern_fstatfs (struct thread*,int ,struct statfs*) ;
 struct statfs* malloc (int,int ,int ) ;

int
sys_fstatfs(struct thread *td, struct fstatfs_args *uap)
{
 struct statfs *sfp;
 int error;

 sfp = malloc(sizeof(struct statfs), M_STATFS, M_WAITOK);
 error = kern_fstatfs(td, uap->fd, sfp);
 if (error == 0)
  error = copyout(sfp, uap->buf, sizeof(struct statfs));
 free(sfp, M_STATFS);
 return (error);
}
