
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uuidgen_args {int count; int store; } ;
struct uuid {int dummy; } ;
struct thread {int dummy; } ;


 int EINVAL ;
 int M_TEMP ;
 int M_WAITOK ;
 int copyout (struct uuid*,int ,size_t) ;
 int free (struct uuid*,int ) ;
 int kern_uuidgen (struct uuid*,size_t) ;
 struct uuid* malloc (size_t,int ,int ) ;

int
sys_uuidgen(struct thread *td, struct uuidgen_args *uap)
{
 struct uuid *store;
 size_t count;
 int error;







 if (uap->count < 1 || uap->count > 2048)
  return (EINVAL);

 count = uap->count;
 store = malloc(count * sizeof(struct uuid), M_TEMP, M_WAITOK);
 kern_uuidgen(store, count);
 error = copyout(store, uap->store, count * sizeof(struct uuid));
 free(store, M_TEMP);
 return (error);
}
