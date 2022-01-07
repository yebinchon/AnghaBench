
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct _umtx_time {int dummy; } ;
struct _umtx_op_args {int obj; scalar_t__ uaddr1; int * uaddr2; } ;


 int _UMUTEX_WAIT ;
 int do_lock_umutex (struct thread*,int ,struct _umtx_time*,int ) ;
 int umtx_copyin_umtx_time (int *,size_t,struct _umtx_time*) ;

__attribute__((used)) static int
__umtx_op_wait_umutex(struct thread *td, struct _umtx_op_args *uap)
{
 struct _umtx_time *tm_p, timeout;
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
 return (do_lock_umutex(td, uap->obj, tm_p, _UMUTEX_WAIT));
}
