
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct _umtx_time {int dummy; } ;
struct _umtx_op_args {int val; int obj; scalar_t__ uaddr1; int * uaddr2; } ;


 int do_wait (struct thread*,int ,int ,struct _umtx_time*,int ,int ) ;
 int umtx_copyin_umtx_time (int *,size_t,struct _umtx_time*) ;

__attribute__((used)) static int
__umtx_op_wait(struct thread *td, struct _umtx_op_args *uap)
{
 struct _umtx_time timeout, *tm_p;
 int error;

 if (uap->uaddr2 == ((void*)0))
  tm_p = ((void*)0);
 else {
  error = umtx_copyin_umtx_time(
      uap->uaddr2, (size_t)uap->uaddr1, &timeout);
  if (error != 0)
   return (error);
  tm_p = &timeout;
 }
 return (do_wait(td, uap->obj, uap->val, tm_p, 0, 0));
}
