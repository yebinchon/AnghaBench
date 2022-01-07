
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct _umtx_op_args {int val; int uaddr1; int obj; int * uaddr2; } ;


 int do_cv_wait (struct thread*,int ,int ,struct timespec*,int ) ;
 int umtx_copyin_timeout (int *,struct timespec*) ;

__attribute__((used)) static int
__umtx_op_cv_wait(struct thread *td, struct _umtx_op_args *uap)
{
 struct timespec *ts, timeout;
 int error;


 if (uap->uaddr2 == ((void*)0))
  ts = ((void*)0);
 else {
  error = umtx_copyin_timeout(uap->uaddr2, &timeout);
  if (error != 0)
   return (error);
  ts = &timeout;
 }
 return (do_cv_wait(td, uap->obj, uap->uaddr1, ts, uap->val));
}
