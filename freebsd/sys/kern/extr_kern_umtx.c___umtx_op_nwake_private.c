
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct _umtx_op_args {int val; scalar_t__ obj; } ;


 int BATCH_SIZE ;
 int INT_MAX ;
 int MIN (int,int) ;
 int copyin (char**,char**,int) ;
 int kern_umtx_wake (struct thread*,char*,int ,int) ;
 int maybe_yield () ;

__attribute__((used)) static int
__umtx_op_nwake_private(struct thread *td, struct _umtx_op_args *uap)
{
 char *uaddrs[BATCH_SIZE], **upp;
 int count, error, i, pos, tocopy;

 upp = (char **)uap->obj;
 error = 0;
 for (count = uap->val, pos = 0; count > 0; count -= tocopy,
     pos += tocopy) {
  tocopy = MIN(count, BATCH_SIZE);
  error = copyin(upp + pos, uaddrs, tocopy * sizeof(char *));
  if (error != 0)
   break;
  for (i = 0; i < tocopy; ++i)
   kern_umtx_wake(td, uaddrs[i], INT_MAX, 1);
  maybe_yield();
 }
 return (error);
}
