
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct _umtx_time {int dummy; } ;
struct _umtx_op_args {int val; int obj; scalar_t__ uaddr1; int * uaddr2; } ;


 int do_rw_rdlock (struct thread*,int ,int ,struct _umtx_time*) ;
 int umtx_copyin_umtx_time (int *,size_t,struct _umtx_time*) ;

__attribute__((used)) static int
__umtx_op_rw_rdlock(struct thread *td, struct _umtx_op_args *uap)
{
 struct _umtx_time timeout;
 int error;


 if (uap->uaddr2 == ((void*)0)) {
  error = do_rw_rdlock(td, uap->obj, uap->val, 0);
 } else {
  error = umtx_copyin_umtx_time(uap->uaddr2,
     (size_t)uap->uaddr1, &timeout);
  if (error != 0)
   return (error);
  error = do_rw_rdlock(td, uap->obj, uap->val, &timeout);
 }
 return (error);
}
