
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mq_attr {int dummy; } ;
struct kmq_open_args {int flags; int * attr; int mode; int path; } ;
typedef int attr ;


 int EINVAL ;
 int FFLAGS (int) ;
 int O_ACCMODE ;
 int O_CREAT ;
 int O_EXEC ;
 int copyin (int *,struct mq_attr*,int) ;
 int kern_kmq_open (struct thread*,int ,int,int ,struct mq_attr*) ;

int
sys_kmq_open(struct thread *td, struct kmq_open_args *uap)
{
 struct mq_attr attr;
 int flags, error;

 if ((uap->flags & O_ACCMODE) == O_ACCMODE || uap->flags & O_EXEC)
  return (EINVAL);
 flags = FFLAGS(uap->flags);
 if ((flags & O_CREAT) != 0 && uap->attr != ((void*)0)) {
  error = copyin(uap->attr, &attr, sizeof(attr));
  if (error)
   return (error);
 }
 return (kern_kmq_open(td, uap->path, flags, uap->mode,
     uap->attr != ((void*)0) ? &attr : ((void*)0)));
}
