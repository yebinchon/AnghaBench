
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mq_attr {int __reserved; } ;
struct kmq_setattr_args {int * oattr; int * attr; int mqd; } ;
typedef int oattr ;
typedef int attr ;


 int bzero (int ,int) ;
 int copyin (int *,struct mq_attr*,int) ;
 int copyout (struct mq_attr*,int *,int) ;
 int kern_kmq_setattr (struct thread*,int ,struct mq_attr*,struct mq_attr*) ;

int
sys_kmq_setattr(struct thread *td, struct kmq_setattr_args *uap)
{
 struct mq_attr attr, oattr;
 int error;

 if (uap->attr != ((void*)0)) {
  error = copyin(uap->attr, &attr, sizeof(attr));
  if (error != 0)
   return (error);
 }
 error = kern_kmq_setattr(td, uap->mqd, uap->attr != ((void*)0) ? &attr : ((void*)0),
     &oattr);
 if (error == 0 && uap->oattr != ((void*)0)) {
  bzero(oattr.__reserved, sizeof(oattr.__reserved));
  error = copyout(&oattr, uap->oattr, sizeof(oattr));
 }
 return (error);
}
