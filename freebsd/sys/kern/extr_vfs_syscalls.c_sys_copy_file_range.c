
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct copy_file_range_args {int * outoffp; int * inoffp; int flags; int len; int outfd; int infd; } ;
typedef int off_t ;


 int copyin (int *,int *,int) ;
 int copyout (int *,int *,int) ;
 int kern_copy_file_range (struct thread*,int ,int *,int ,int *,int ,int ) ;

int
sys_copy_file_range(struct thread *td, struct copy_file_range_args *uap)
{
 off_t inoff, outoff, *inoffp, *outoffp;
 int error;

 inoffp = outoffp = ((void*)0);
 if (uap->inoffp != ((void*)0)) {
  error = copyin(uap->inoffp, &inoff, sizeof(off_t));
  if (error != 0)
   return (error);
  inoffp = &inoff;
 }
 if (uap->outoffp != ((void*)0)) {
  error = copyin(uap->outoffp, &outoff, sizeof(off_t));
  if (error != 0)
   return (error);
  outoffp = &outoff;
 }
 error = kern_copy_file_range(td, uap->infd, inoffp, uap->outfd,
     outoffp, uap->len, uap->flags);
 if (error == 0 && uap->inoffp != ((void*)0))
  error = copyout(inoffp, uap->inoffp, sizeof(off_t));
 if (error == 0 && uap->outoffp != ((void*)0))
  error = copyout(outoffp, uap->outoffp, sizeof(off_t));
 return (error);
}
